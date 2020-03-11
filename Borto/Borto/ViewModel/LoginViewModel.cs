using System;
using System.Runtime.InteropServices;
using System.Security;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace Borto
{
    /// <summary>
    /// The View Model for the custom flat window
    /// </summary>
    public class LoginViewModel : BaseViewModel
    {
        #region Public Properties

        /// <summary>
        /// The email of the user 
        /// </summary>
        public string Email { get; set; }

        /// <summary>
        /// A flag indicating if the login command is running
        /// </summary>
        public bool LoginIsRunning { get; set; } = false;

        #endregion

        #region Commands

        /// <summary>
        /// The command to login
        /// </summary>
        public ICommand LoginCommand { get; set; }
        #endregion

        #region Constructor
        /// <summary>
        /// Default constructor
        /// </summary>
        public LoginViewModel()
        {
            LoginCommand = new RelayParameterizedCommand(async (parametr) => await Login(parametr));
        }

        #endregion



        /// <summary>
        /// Attempts to log the user in 
        /// </summary>
        /// <param name="parametr">The <see cref="SecureString"/> secure string passed in from the view for the users password </param>
        /// <returns></returns>
        public async Task Login(object parametr)
        {
            await RunCommand(()=> this.LoginIsRunning,async () =>
                {

                await Task.Delay(5000);

                var email = this.Email;

                //IMPORTANT Never store unsecure password in variable like this 
                var pass = (parametr as IHavePassword).SecurePassword.Unsecure();
            });
        }

    }
}
