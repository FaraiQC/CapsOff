using STEM.Data;
using STEM.Entities;
using STEM.Models;

namespace STEM.Services
{
    public interface IUserAuthenticationService
    {
        User LogInUser(UserLogIn user);
    }
    public class UserAuthenticationServices : IUserAuthenticationService
    {

        private STEMContext _context;
        public UserAuthenticationServices(STEMContext context)
        {
            _context = context;
        }
        public User LogInUser(UserLogIn userDetails)
        {
            Console.Write(userDetails.Email);

            var user = _context.User.FirstOrDefault(e => e.Email == userDetails.Email || e.MobileNo == userDetails.MobileNo);
            if (user != null)
            {
                if (user.Password == userDetails.Password)
                {
                    return user;
                }
                else
                {
                    throw new Exception("Wrong Username/Password");
                }
            }
            else
            {
                throw new KeyNotFoundException("The user not found, Please register an account first.");
            }
        }
    }
}