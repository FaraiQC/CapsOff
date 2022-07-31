using STEM.Models;
using STEM.Services;
using AutoMapper;
using Microsoft.AspNetCore.Mvc;
using STEM.Data;
using STEM.Entities;

namespace STEM.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AuthenticationController : ControllerBase
    {
        private IUserAuthenticationService userService;
        private IMapper mapper;
        private STEMContext _context;

        public AuthenticationController(IUserAuthenticationService userService, IMapper mapper)
        {
            this.userService = userService;
            this.mapper = mapper;
        }

        
        [HttpPost("/login")]
        public IActionResult LogInUser(UserLogIn userDetails)
        {
            try
            {
                var user = userService.LogInUser(userDetails);
                return Ok(user);
            }
            catch(Exception e)
            {
                return Unauthorized(e.Message);
            }
        }
    }
}