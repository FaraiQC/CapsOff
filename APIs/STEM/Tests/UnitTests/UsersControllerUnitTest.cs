using System.Linq.Expressions;
using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using Moq;
using STEM.Controllers;
using STEM.Data;
using STEM.Models;
using STEM.Services;

namespace Tests.UnitTests;

  public class UserControllerTest
    {
        private readonly Mock<IUserService> _userRepositoryMock;
        private static Mock<IMapper> _mapper;

        public UserControllerTest()
        {
            _userRepositoryMock = new Mock<IUserService>();
            _mapper = new Mock<IMapper>();
        }



        [Fact]
        public async Task  GetAllUsers_ListOfUsers_ReturnsListOfUsers()
        {
            //arrange
            var user = new User
            {
                UserId =new Guid(),
                Name = "Simphiwe",
                Surname = "Ndlovu",
                Email = "simphiwendlovu527@gmail.com",
                Grade = 12,
                Password = "12345678"
            };

            //arrange
            List<User> users = new List<User>
            {
                new User
                {
                    Name = "Simphiwe",
                    Surname = "Ndlovu",
                    Email = "simphiwendlovu527@gmail.com",
                    Grade = 12,
                    Password = "12345678"
                },
                new User
                {
                    UserId =new Guid(),
                    Name = "Musa",
                    Surname = "Mabasa",
                    Email = "MusaMabasa527@gmail.com",
                    Grade = 11,
                    Password = "12345678"
                },
                new User
                {
                    UserId =new Guid(),
                    Name = "Simphiwe",
                    Surname = "Ndlovu",
                    Email = "simphiwendlovu527@gmail.com",
                    Grade = 12,
                    Password = "12345678"
                }
            };

            _userRepositoryMock.Setup(u => u.GetAllUsers()).Returns(users);

            var controller = new UsersController(_userRepositoryMock.Object, _mapper.Object);
            var result = controller.GetAllUsers();


            Assert.NotNull(result);
            Assert.IsType<OkObjectResult>(result);
            
            var actual = (result as OkObjectResult).Value;
            Assert.IsType<List<User>>(actual);
            Assert.Equal(3, (actual as List<User>).Count);

        }
        
        [Fact]
        public async Task GetUserById_UserId_ReturnsUserOfId()
        {
            //arrange
            var user = new User
            {
                UserId =new Guid(),
                Name = "Simphiwe",
                Surname = "Ndlovu",
                Email = "simphiwendlovu527@gmail.com",
                Grade = 12,
                Password = "12345678"
            };
        
            _userRepositoryMock.Setup(u => u.GetUserById(It.IsAny<Guid>())).Returns(user);
        
            var controller = new UsersController(_userRepositoryMock.Object,_mapper.Object);
        
            //act
            var result = controller.GetUserById(user.UserId);
        
            Assert.NotNull(result);
            Assert.IsType<OkObjectResult>(result);

            var actual = (result as OkObjectResult).Value;
            Assert.IsType<User>(actual);
        }
        
        [Fact]
        public async Task AddUser_User_ReturnsUser()
        {
            //arrange
            var user = new User
            {
                UserId =new Guid(),
                Name = "Simphiwe",
                Surname = "Ndlovu",
                Email = "simphiwendlovu527@gmail.com",
                Grade = 12,
                Password = "12345678"
            };
            _userRepositoryMock.Setup(u => u. RegisterUser(It.IsAny<User>())).Returns(user.UserId);
        
            var controller = new UsersController(_userRepositoryMock.Object,_mapper.Object);
        
            //act
            var result =  controller.RegisterUser(user);
        
            Assert.NotNull(result);
            Assert.IsType<OkObjectResult>(result);
        
            var actual = (result as OkObjectResult).Value;
            Assert.IsType<System.Guid>(actual);
        }
        
        [Fact]
        public async Task UpdateUser_User_ReturnsUser()
        {
            //arrange
            var user = new User
            {
                UserId =new Guid(),
                Name = "Simphiwe",
                Surname = "Ndlovu",
                Email = "simphiwendlovu527@gmail.com",
                Grade = 12,
                Password = "12345678"
            };

            _userRepositoryMock.Setup(u => u.UpdateUser(It.IsAny<User>())).Returns(user);

            var controller = new UsersController(_userRepositoryMock.Object,_mapper.Object);

            //act
            var result =  controller.UpdateUser(user.UserId,user);

            Assert.NotNull(result);
            Assert.IsType<OkObjectResult>(result);

            var actual = (result as OkObjectResult).Value;
            Assert.IsType<User>(actual);
        }
        
    }
