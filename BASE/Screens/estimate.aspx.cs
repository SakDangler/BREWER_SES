using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace BASE.Screens
{
    public partial class estimate : System.Web.UI.Page
    {
        private SQLEntities _entity;

        protected void Page_Init(Object sender, EventArgs e)
        {
            _entity = new SQLEntities();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.HideAll();
                this.BindLists();
            }
        }

        #region Field Visibility
        protected void HideAll()
        {
            divBranchAndLadderLines.Style["display"] = "none";
            divOtherThanStandardLines.Style["display"] = "none";
            divCrossMain.Style["display"] = "none";
            divSpecialsAndSprinklers.Style["display"] = "none";
            divBulkMainFittingsAndValves.Style["display"] = "none";
            divFDCAndAntiFreeze.Style["display"] = "none";
            divEstPipeRequirements.Style["display"] = "none";
        }

        protected void ShowBranchAndLadderLines()
        {
            divBranchAndLadderLines.Style["display"] = "block";
            divOtherThanStandardLines.Style["display"] = "none";
            divCrossMain.Style["display"] = "none";
            divSpecialsAndSprinklers.Style["display"] = "none";
            divBulkMainFittingsAndValves.Style["display"] = "none";
            divFDCAndAntiFreeze.Style["display"] = "none";
            divEstPipeRequirements.Style["display"] = "none";
        }

        protected void ShowOtherThanStandardLines()
        {
            divBranchAndLadderLines.Style["display"] = "none";
            divOtherThanStandardLines.Style["display"] = "block";
            divCrossMain.Style["display"] = "none";
            divSpecialsAndSprinklers.Style["display"] = "none";
            divBulkMainFittingsAndValves.Style["display"] = "none";
            divFDCAndAntiFreeze.Style["display"] = "none";
            divEstPipeRequirements.Style["display"] = "none";
        }

        protected void ShowCrossMain()
        {
            divBranchAndLadderLines.Style["display"] = "none";
            divOtherThanStandardLines.Style["display"] = "none";
            divCrossMain.Style["display"] = "block";
            divSpecialsAndSprinklers.Style["display"] = "none";
            divBulkMainFittingsAndValves.Style["display"] = "none";
            divFDCAndAntiFreeze.Style["display"] = "none";
            divEstPipeRequirements.Style["display"] = "none";
        }

        protected void ShowSpecialsAndSprinklers()
        {
            divBranchAndLadderLines.Style["display"] = "none";
            divOtherThanStandardLines.Style["display"] = "none";
            divCrossMain.Style["display"] = "none";
            divSpecialsAndSprinklers.Style["display"] = "block";
            divBulkMainFittingsAndValves.Style["display"] = "none";
            divFDCAndAntiFreeze.Style["display"] = "none";
            divEstPipeRequirements.Style["display"] = "none";
        }

        protected void ShowBulkMainFittingsAndValves()
        {
            divBranchAndLadderLines.Style["display"] = "none";
            divOtherThanStandardLines.Style["display"] = "none";
            divCrossMain.Style["display"] = "none";
            divSpecialsAndSprinklers.Style["display"] = "none";
            divBulkMainFittingsAndValves.Style["display"] = "block";
            divFDCAndAntiFreeze.Style["display"] = "none";
            divEstPipeRequirements.Style["display"] = "none";
        }

        protected void ShowFDCAndAntiFreeze()
        {
            divBranchAndLadderLines.Style["display"] = "none";
            divOtherThanStandardLines.Style["display"] = "none";
            divCrossMain.Style["display"] = "none";
            divSpecialsAndSprinklers.Style["display"] = "none";
            divBulkMainFittingsAndValves.Style["display"] = "none";
            divFDCAndAntiFreeze.Style["display"] = "block";
            divEstPipeRequirements.Style["display"] = "none";
        }

        protected void ShowEstPipeRequirements()
        {
            divBranchAndLadderLines.Style["display"] = "none";
            divOtherThanStandardLines.Style["display"] = "none";
            divCrossMain.Style["display"] = "none";
            divSpecialsAndSprinklers.Style["display"] = "none";
            divBulkMainFittingsAndValves.Style["display"] = "none";
            divFDCAndAntiFreeze.Style["display"] = "none";
            divEstPipeRequirements.Style["display"] = "block";
        }

        protected void BindLists()
        {

        }
        #endregion
    }
}