using System.Net.Http.Json;
using Microsoft.AspNetCore.Mvc.Testing;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.VisualStudio.TestPlatform.TestHost;
using STEM.Data;
using STEM.Models;

namespace Tests.IntegrationTests;

public class UserControllerIntegrationTests
{
    public class UserControllerTests : IClassFixture<WebApplicationFactory<Program>>
    {
        private readonly HttpClient _httpClient;



        public UserControllerTests()
        {
            var dbname = Guid.NewGuid().ToString();
            var appFactory = new WebApplicationFactory<Program>()
                .WithWebHostBuilder(builder =>
                {
                    builder.ConfigureServices(
                        services =>
                        {
                            var descriptor = services.SingleOrDefault(
                                d => d.ServiceType == typeof(DbContextOptions<STEMContext>));

                            if (descriptor != null)
                            {
                                services.Remove(descriptor);
                            }

                            services.AddDbContext<STEMContext>(
                                options => { options.UseInMemoryDatabase(dbname); });
                        });
                });

            _httpClient = appFactory.CreateClient();
        }

        [Fact]
        public async Task GetAllUsers_NoUsers()
        {
            //Act
            var response = await _httpClient.GetAsync("https://localhost:7260/api/Users");

            //Assert
            Assert.NotNull(response);
            Assert.Equal(200, (double)response.StatusCode);

            var users = response.Content.ReadFromJsonAsync<List<User>>();
            Assert.NotNull(users);
            Assert.Equal(0, users.Result.Count);
        }

        [Fact]
        public async Task GetAllUsers_Users()
        {
            //Arrange
            var testUser = new User()
            {
                UserId = new Guid(),
                Name = "Simphiwe",
                Surname = "Ndlovu",
                Email = "simphiwendlovu527@gmail.com",
                Grade = 12,
                Password = "12345678"

            };
            var testUser2 = new User()
            {

                UserId = new Guid(),
                Name = "Simphiwe",
                Surname = "Ndlovu",
                Email = "simphiwendlovu527@gmail.com",
                Grade = 12,
                Password = "12345678"

            };
            var testUser3 = new User()
            {
                UserId = new Guid(),
                Name = "Simphiwe",
                Surname = "Ndlovu",
                Email = "simphiwendlovu527@gmail.com",
                Grade = 12,
                Password = "12345678"

            };

            await _httpClient.PostAsJsonAsync("https://localhost:7260/api/Users", testUser);
            await _httpClient.PostAsJsonAsync("https://localhost:7260/api/Users", testUser2);
            await _httpClient.PostAsJsonAsync("https://localhost:7260/api/Users", testUser3);

            //Act
            var response = await _httpClient.GetAsync("https://localhost:7260/api/Users");

            //Assert
            Assert.NotNull(response);
            Assert.Equal(200, (double)response.StatusCode);

            var Users = await response.Content.ReadFromJsonAsync<List<User>>();
            Assert.NotNull(Users);
            Assert.Equal(0, Users.Count());
        }

        //     [Fact]
        //     public async Task AddUser()
        //     {
        //         var testUser = new User()
        //         {
        //             UserId =new Guid(),
        //             Name = "Simphiwe",
        //             Surname = "Ndlovu",
        //             Email = "simphiwendlovu527@gmail.com",
        //             Grade = 12,
        //             Password = "12345678"
        //
        //         };
        //
        //         //Act
        //         var id = testUser.UserId;
        //         await _httpClient.PostAsJsonAsync("https://localhost:7260/api/Users", testUser);
        //         var response = await _httpClient.GetAsync("https://localhost:7260/api/Users/"+id);
        //
        //         //Assert
        //         Assert.NotNull(response);
        //         Assert.Equal(200, (double)response.StatusCode);
        //
        //         var User = await response.Content.ReadFromJsonAsync<User>();
        //
        //         Assert.NotNull(User);
        //         if (User != null)
        //         {
        //             Assert.Equal(testUser.UserId, User.UserId);
        //            
        //         
        //         }
        //     }
        //
        //
        // }
        // "userId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
        // "name": "string",
        // "surname": "string",
        // "email": "string",
        // "mobileNo": "string",
        // "grade": 0,
        // "schoolId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
        // "userTypeId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
        // "password": "string"

    }
}