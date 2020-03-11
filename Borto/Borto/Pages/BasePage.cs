using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Media.Animation;

namespace Borto
{

    /// <summary>
    /// A base page for all pages to gain functionality
    /// </summary>

    public class BasePage<VM> : Page
        where VM: BaseViewModel, new()
    {
        #region Private Member
        /// <summary>
        /// The View Model associated with this page
        /// </summary>
        private VM mViewModel;
         
        #endregion

        #region Public Properties
        /// <summary>
        /// The animation the play when the page is first loaded
        /// </summary>
        public PageAnimation PageLoadAnimation { get; set; } = PageAnimation.SlideAndFadeInFromRight;

        /// <summary>
        /// The animation the play when the page is first unloaded
        /// </summary>
        public PageAnimation PageUnLoadAnimation { get; set; } = PageAnimation.SlideAndFadeOutToLeft;

        /// <summary>
        /// The time any slide animation takes to complete 
        /// </summary>
        public float SlideSeconds { get; set; } = 0.8f;

        /// <summary>
        /// The view model associated with this page
        /// </summary>
        public VM VIewModel {
            get => mViewModel;
            set {
                //If nothing changed, return 
                if (mViewModel == value)
                    return;

                //Update the value
                mViewModel = value;

                // Set the data context for the page 
                this.DataContext = mViewModel; 
            }
        }


        #endregion


        #region Constructor

        /// <summary>
        /// Default constructor
        /// </summary>
        public BasePage()
        {
            //If we are animating in, hide to begin with
            if (PageLoadAnimation != PageAnimation.None)
                Visibility = Visibility.Collapsed;

            //Create a default view model
            this.VIewModel = new VM();

            //Listen out for the page loading 
            Loaded += BasePage_Loaded;
        }
        #endregion

        #region Animation Loaded/Unloaded

        /// <summary>
        /// Once the page is loaded , perform any required animation
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private async void BasePage_Loaded(object sender, System.Windows.RoutedEventArgs e)
        {
            //Animate this page in 
            await AnimateIn();
        }

        /// <summary>
        /// Animates in this pages
        /// </summary>
        /// <returns></returns>
        public async Task AnimateIn()
        {
            //Make sure we have smth to do
            if (this.PageLoadAnimation == PageAnimation.None)
            {
                return;
            }
            switch (this.PageLoadAnimation)
            {
                case PageAnimation.SlideAndFadeInFromRight:

                    //Start the animation
                   await this.SlideAndFadeInFromRightAsync(this.SlideSeconds);

                    break;
            }
        }
        /// <summary>
        /// Animates the pages out
        /// </summary>
        /// <returns></returns>
        public async Task AnimateOut()
        {
            //Make sure we have smth to do
            if (this.PageUnLoadAnimation == PageAnimation.None)
            {
                return;
            }
            switch (this.PageUnLoadAnimation)
            {
                case PageAnimation.SlideAndFadeOutToLeft:

                    //Start the animation
                    await this.SlideAndFadeOutToLeftAsync(this.SlideSeconds);

                    break;
            }
        }

        #endregion
    }
}
