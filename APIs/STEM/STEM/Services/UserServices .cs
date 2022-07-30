using STEM.Data;
using STEM.Models;

namespace STEM.Services
{
    public interface IUserService
    {
        IEnumerable<User> GetAllUsers();
        User GetUserById(Guid id);
        Guid RegisterUser(User user);
    }
    public class UserServices : IUserService
    {

        private STEMContext _context;
        public UserServices(STEMContext context)
        {
            _context = context;
        }

        public IEnumerable<User> GetAllUsers()
        {
            return _context.User;
        }

        public User GetUserById(Guid id)
        {
            var  user= _context.User.Find(id);
            if (user  == null)
            {
                throw new KeyNotFoundException("The user  not found");
            }
            return user;
        }
        public Guid RegisterUser(User user)
        {
            if (_context.User.Where(e => e.MobileNo == user.Email || e.MobileNo == user.MobileNo).Any())
            {
                throw new KeyNotFoundException("This User already exists, Please log in");
            }
            //User.Password = BCrypt.Net.BCrypt.HashPassword(User.Password, "ThisWillBeAGoodPlatformForBothUsersAndTuteesToConnectOnADailyBa5e5");
            user.UserId = Guid.NewGuid();
            _context.User.Add(user);
            _context.SaveChanges();
            return user.UserId;
        }
    }
}