using STEM.Models;
using STEM.Services;
using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using STEM.Data;

namespace STEM.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class UserTypesController : ControllerBase
    {
        private IUserTypeService userTypeService;
        private IMapper mapper;

        public UserTypesController(IUserTypeService userTypeService, IMapper mapper)
        {
            this.userTypeService = userTypeService;
            this.mapper = mapper;
        }

        [HttpGet]
        public IActionResult GetAllUserTypes()
        {
            var userTypes = userTypeService.GetAllUserTypes();
            return Ok(userTypes);
        }

        [HttpPost("userType")]
        public IActionResult AddUserType(UserType type) {
            var result = userTypeService.AddUserType(type);
            return Ok(result);   
        }
    }
}