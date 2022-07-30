using STEM.Data;
using STEM.Models;

namespace STEM.Services
{
    public interface IUserTypeService
    {
        IEnumerable<UserType> GetAllUserTypes();
        UserType GetUserTypeById(Guid id);
        Guid AddUserType(UserType userType);
    }
    public class UserTypeServices : IUserTypeService
    {

        private STEMContext _context;
        public UserTypeServices(STEMContext context)
        {
            _context = context;
        }

        public IEnumerable<UserType> GetAllUserTypes()
        {
            return _context.UserType;
        }

        public UserType GetUserTypeById(Guid id)
        {
            var type = _context.UserType.Find(id);
            if (type == null)
            {
                throw new KeyNotFoundException("The user type not found");
            }
            return type;
        }

        public Guid AddUserType(UserType type)
        {
            if (_context.UserType.Where(e => e.Type == type.Type).Any())
            {
                throw new KeyNotFoundException("The Tutor with this email already exists");
            }
            //Tutor.Password = BCrypt.Net.BCrypt.HashPassword(Tutor.Password, "ThisWillBeAGoodPlatformForBothTutorsAndTuteesToConnectOnADailyBa5e5");
            type.UserTypeId = Guid.NewGuid();
            _context.UserType.Add(type);
            _context.SaveChanges();
            return type.UserTypeId;
        }
    }
}