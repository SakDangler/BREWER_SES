using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace BASE.Screens
{
    public partial class prices : System.Web.UI.Page
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
            divPipe.Style["display"] = "none";
            divValves.Style["display"] = "none";
            divSteelFittings.Style["display"] = "none";
            divVictaulic.Style["display"] = "none";
            divNipplesHangers.Style["display"] = "none";
            divCustomSpecials.Style["display"] = "none";
            divHeads.Style["display"] = "none";
            divDevices.Style["display"] = "none";
            divPlasticFittings.Style["display"] = "none";
            divFlangeMaterial.Style["display"] = "none";
            divBackFlowPreventer.Style["display"] = "none";
            divUndergroundMaterial.Style["display"] = "none";
            divGalvanizedVictaulic.Style["display"] = "none";
        }

        protected void ShowPipe()
        {
            divPipe.Style["display"] = "block";
            divValves.Style["display"] = "none";
            divSteelFittings.Style["display"] = "none";
            divVictaulic.Style["display"] = "none";
            divNipplesHangers.Style["display"] = "none";
            divCustomSpecials.Style["display"] = "none";
            divHeads.Style["display"] = "none";
            divDevices.Style["display"] = "none";
            divPlasticFittings.Style["display"] = "none";
            divFlangeMaterial.Style["display"] = "none";
            divBackFlowPreventer.Style["display"] = "none";
            divUndergroundMaterial.Style["display"] = "none";
            divGalvanizedVictaulic.Style["display"] = "none";
        }

        protected void ShowValves()
        {
            divPipe.Style["display"] = "none";
            divValves.Style["display"] = "block";
            divSteelFittings.Style["display"] = "none";
            divVictaulic.Style["display"] = "none";
            divNipplesHangers.Style["display"] = "none";
            divCustomSpecials.Style["display"] = "none";
            divHeads.Style["display"] = "none";
            divDevices.Style["display"] = "none";
            divPlasticFittings.Style["display"] = "none";
            divFlangeMaterial.Style["display"] = "none";
            divBackFlowPreventer.Style["display"] = "none";
            divUndergroundMaterial.Style["display"] = "none";
            divGalvanizedVictaulic.Style["display"] = "none";
        }

        protected void ShowSteelFittings()
        {
            divPipe.Style["display"] = "none";
            divValves.Style["display"] = "none";
            divSteelFittings.Style["display"] = "block";
            divVictaulic.Style["display"] = "none";
            divNipplesHangers.Style["display"] = "none";
            divCustomSpecials.Style["display"] = "none";
            divHeads.Style["display"] = "none";
            divDevices.Style["display"] = "none";
            divPlasticFittings.Style["display"] = "none";
            divFlangeMaterial.Style["display"] = "none";
            divBackFlowPreventer.Style["display"] = "none";
            divUndergroundMaterial.Style["display"] = "none";
            divGalvanizedVictaulic.Style["display"] = "none";
        }

        protected void ShowVictaulic()
        {
            divPipe.Style["display"] = "none";
            divValves.Style["display"] = "none";
            divSteelFittings.Style["display"] = "none";
            divVictaulic.Style["display"] = "block";
            divNipplesHangers.Style["display"] = "none";
            divCustomSpecials.Style["display"] = "none";
            divHeads.Style["display"] = "none";
            divDevices.Style["display"] = "none";
            divPlasticFittings.Style["display"] = "none";
            divFlangeMaterial.Style["display"] = "none";
            divBackFlowPreventer.Style["display"] = "none";
            divUndergroundMaterial.Style["display"] = "none";
            divGalvanizedVictaulic.Style["display"] = "none";
        }

        protected void ShowNipplesHangers()
        {
            divPipe.Style["display"] = "none";
            divValves.Style["display"] = "none";
            divSteelFittings.Style["display"] = "none";
            divVictaulic.Style["display"] = "none";
            divNipplesHangers.Style["display"] = "block";
            divCustomSpecials.Style["display"] = "none";
            divHeads.Style["display"] = "none";
            divDevices.Style["display"] = "none";
            divPlasticFittings.Style["display"] = "none";
            divFlangeMaterial.Style["display"] = "none";
            divBackFlowPreventer.Style["display"] = "none";
            divUndergroundMaterial.Style["display"] = "none";
            divGalvanizedVictaulic.Style["display"] = "none";
        }

        protected void ShowCustomSpecials()
        {
            divPipe.Style["display"] = "none";
            divValves.Style["display"] = "none";
            divSteelFittings.Style["display"] = "none";
            divVictaulic.Style["display"] = "none";
            divNipplesHangers.Style["display"] = "none";
            divCustomSpecials.Style["display"] = "block";
            divHeads.Style["display"] = "none";
            divDevices.Style["display"] = "none";
            divPlasticFittings.Style["display"] = "none";
            divFlangeMaterial.Style["display"] = "none";
            divBackFlowPreventer.Style["display"] = "none";
            divUndergroundMaterial.Style["display"] = "none";
            divGalvanizedVictaulic.Style["display"] = "none";
        }

        protected void ShowHeads()
        {
            divPipe.Style["display"] = "none";
            divValves.Style["display"] = "none";
            divSteelFittings.Style["display"] = "none";
            divVictaulic.Style["display"] = "none";
            divNipplesHangers.Style["display"] = "none";
            divCustomSpecials.Style["display"] = "none";
            divHeads.Style["display"] = "block";
            divDevices.Style["display"] = "none";
            divPlasticFittings.Style["display"] = "none";
            divFlangeMaterial.Style["display"] = "none";
            divBackFlowPreventer.Style["display"] = "none";
            divUndergroundMaterial.Style["display"] = "none";
            divGalvanizedVictaulic.Style["display"] = "none";
        }

        protected void ShowDevices()
        {
            divPipe.Style["display"] = "none";
            divValves.Style["display"] = "none";
            divSteelFittings.Style["display"] = "none";
            divVictaulic.Style["display"] = "none";
            divNipplesHangers.Style["display"] = "none";
            divCustomSpecials.Style["display"] = "none";
            divHeads.Style["display"] = "none";
            divDevices.Style["display"] = "block";
            divPlasticFittings.Style["display"] = "none";
            divFlangeMaterial.Style["display"] = "none";
            divBackFlowPreventer.Style["display"] = "none";
            divUndergroundMaterial.Style["display"] = "none";
            divGalvanizedVictaulic.Style["display"] = "none";
        }

        protected void ShowPlasticFittings()
        {
            divPipe.Style["display"] = "none";
            divValves.Style["display"] = "none";
            divSteelFittings.Style["display"] = "none";
            divVictaulic.Style["display"] = "none";
            divNipplesHangers.Style["display"] = "none";
            divCustomSpecials.Style["display"] = "none";
            divHeads.Style["display"] = "none";
            divDevices.Style["display"] = "none";
            divPlasticFittings.Style["display"] = "block";
            divFlangeMaterial.Style["display"] = "none";
            divBackFlowPreventer.Style["display"] = "none";
            divUndergroundMaterial.Style["display"] = "none";
            divGalvanizedVictaulic.Style["display"] = "none";
        }

        protected void ShowFlangeMaterial()
        {
            divPipe.Style["display"] = "none";
            divValves.Style["display"] = "none";
            divSteelFittings.Style["display"] = "none";
            divVictaulic.Style["display"] = "none";
            divNipplesHangers.Style["display"] = "none";
            divCustomSpecials.Style["display"] = "none";
            divHeads.Style["display"] = "none";
            divDevices.Style["display"] = "none";
            divPlasticFittings.Style["display"] = "none";
            divFlangeMaterial.Style["display"] = "block";
            divBackFlowPreventer.Style["display"] = "none";
            divUndergroundMaterial.Style["display"] = "none";
            divGalvanizedVictaulic.Style["display"] = "none";
        }

        protected void ShowBackFlowPreventer()
        {
            divPipe.Style["display"] = "none";
            divValves.Style["display"] = "none";
            divSteelFittings.Style["display"] = "none";
            divVictaulic.Style["display"] = "none";
            divNipplesHangers.Style["display"] = "none";
            divCustomSpecials.Style["display"] = "none";
            divHeads.Style["display"] = "none";
            divDevices.Style["display"] = "none";
            divPlasticFittings.Style["display"] = "none";
            divFlangeMaterial.Style["display"] = "none";
            divBackFlowPreventer.Style["display"] = "block";
            divUndergroundMaterial.Style["display"] = "none";
            divGalvanizedVictaulic.Style["display"] = "none";
        }

        protected void ShowUndergroundMaterial()
        {
            divPipe.Style["display"] = "none";
            divValves.Style["display"] = "none";
            divSteelFittings.Style["display"] = "none";
            divVictaulic.Style["display"] = "none";
            divNipplesHangers.Style["display"] = "none";
            divCustomSpecials.Style["display"] = "none";
            divHeads.Style["display"] = "none";
            divDevices.Style["display"] = "none";
            divPlasticFittings.Style["display"] = "none";
            divFlangeMaterial.Style["display"] = "none";
            divBackFlowPreventer.Style["display"] = "none";
            divUndergroundMaterial.Style["display"] = "block";
            divGalvanizedVictaulic.Style["display"] = "none";
        }

        protected void ShowGalvanizedVictaulic()
        {
            divPipe.Style["display"] = "none";
            divValves.Style["display"] = "none";
            divSteelFittings.Style["display"] = "none";
            divVictaulic.Style["display"] = "none";
            divNipplesHangers.Style["display"] = "none";
            divCustomSpecials.Style["display"] = "none";
            divHeads.Style["display"] = "none";
            divDevices.Style["display"] = "none";
            divPlasticFittings.Style["display"] = "none";
            divFlangeMaterial.Style["display"] = "none";
            divBackFlowPreventer.Style["display"] = "none";
            divUndergroundMaterial.Style["display"] = "none";
            divGalvanizedVictaulic.Style["display"] = "block";
        }

        protected void BindLists()
        {
            List<tPrice> prices = _entity.tPrice.ToList();

            lstPipe.DataSource = prices.Where(w => w.PriceTypeID == 1).OrderBy(p => p.ID).ToList();
            lstPipe.DataBind();

            lstValves.DataSource = prices.Where(w => w.PriceTypeID == 2).OrderBy(p => p.ID).ToList();
            lstValves.DataBind();

            lstSteelFittings.DataSource = prices.Where(w => w.PriceTypeID == 3).OrderBy(p => p.ID).ToList();
            lstSteelFittings.DataBind();

            lstVictaulic.DataSource = prices.Where(w => w.PriceTypeID == 4).OrderBy(p => p.ID).ToList();
            lstVictaulic.DataBind();

            lstNipplesHangers.DataSource = prices.Where(w => w.PriceTypeID == 5).OrderBy(p => p.ID).ToList();
            lstNipplesHangers.DataBind();

            lstCustomSpecials.DataSource = prices.Where(w => w.PriceTypeID == 6).OrderBy(p => p.ID).ToList();
            lstCustomSpecials.DataBind();

            lstHeads.DataSource = prices.Where(w => w.PriceTypeID == 7).OrderBy(p => p.ID).ToList();
            lstHeads.DataBind();

            lstDevices.DataSource = prices.Where(w => w.PriceTypeID == 8).OrderBy(p => p.ID).ToList();
            lstDevices.DataBind();

            lstPlasticFittings.DataSource = prices.Where(w => w.PriceTypeID == 9).OrderBy(p => p.ID).ToList();
            lstPlasticFittings.DataBind();

            lstFlangeMaterial.DataSource = prices.Where(w => w.PriceTypeID == 10).OrderBy(p => p.ID).ToList();
            lstFlangeMaterial.DataBind();

            lstBackFlowPreventer.DataSource = prices.Where(w => w.PriceTypeID == 11).OrderBy(p => p.ID).ToList();
            lstBackFlowPreventer.DataBind();

            lstUndergroundMaterial.DataSource = prices.Where(w => w.PriceTypeID == 12).OrderBy(p => p.ID).ToList();
            lstUndergroundMaterial.DataBind();

            lstGalvanizedVictaulic.DataSource = prices.Where(w => w.PriceTypeID == 13).OrderBy(p => p.ID).ToList();
            lstGalvanizedVictaulic.DataBind();
        }
        #endregion

        #region Pipe
        protected void btnSavePipe_Click(object sender, EventArgs e)
        {
            this.ShowPipe();

            foreach (ListViewDataItem item in lstPipe.Items)
            {
                Literal litID = (Literal)item.FindControl("litID");
                TextBox txtName = (TextBox)item.FindControl("txtName");
                TextBox txtPrice = (TextBox)item.FindControl("txtPrice");

                int ID = Convert.ToInt32(litID.Text);

                tPrice price = _entity.tPrice.Where(w => w.ID == ID).FirstOrDefault();

                if (txtPrice.Text.Trim() != price.Price || txtName.Text.Trim() != price.Name)
                {
                    price.Name = txtName.Text.Trim();
                    price.Price = txtPrice.Text.Trim();

                    _entity.tPrice.Add(price);
                    _entity.Entry(price).State = System.Data.Entity.EntityState.Modified;
                    _entity.SaveChanges();
                }
            }
            
            btnAddPipe.Visible = true;
        }

        protected void btnAddPipe_Click(object sender, EventArgs e)
        {
            btnSavePipe_Click(null, null);

            tPrice price = new tPrice();
            price.PriceTypeID = 1;
            price.Name = string.Empty;
            price.Price = "0";

            _entity.tPrice.Add(price);
            _entity.SaveChanges();

            btnAddPipe.Visible = false;
            
            this.BindLists();
        }

        protected void btnDeletePipe_Click(object sender, EventArgs e)
        {
            btnSavePipe_Click(null, null);

            Literal litID = (Literal)((Button)sender).Parent.FindControl("litID");
            int ID = Convert.ToInt32(litID.Text);

            tPrice price = _entity.tPrice.Where(w => w.ID == ID).FirstOrDefault();

            _entity.tPrice.Attach(price);
            _entity.tPrice.Remove(price);
            _entity.SaveChanges();
            
            this.BindLists();
        }
        #endregion

        #region Valves
        protected void btnSaveValves_Click(object sender, EventArgs e)
        {
            this.ShowValves();

            foreach (ListViewDataItem item in lstValves.Items)
            {
                Literal litID = (Literal)item.FindControl("litID");
                TextBox txtName = (TextBox)item.FindControl("txtName");
                TextBox txtPrice = (TextBox)item.FindControl("txtPrice");

                int ID = Convert.ToInt32(litID.Text);

                tPrice price = _entity.tPrice.Where(w => w.ID == ID).FirstOrDefault();

                if (txtPrice.Text.Trim() != price.Price || txtName.Text.Trim() != price.Name)
                {
                    price.Name = txtName.Text.Trim();
                    price.Price = txtPrice.Text.Trim();

                    _entity.tPrice.Add(price);
                    _entity.Entry(price).State = System.Data.Entity.EntityState.Modified;
                    _entity.SaveChanges();
                }
            }

            btnAddValves.Visible = true;
        }

        protected void btnAddValves_Click(object sender, EventArgs e)
        {
            btnSaveValves_Click(null, null);

            tPrice price = new tPrice();
            price.PriceTypeID = 2;
            price.Name = string.Empty;
            price.Price = "0";

            _entity.tPrice.Add(price);
            _entity.SaveChanges();

            btnAddValves.Visible = false;

            this.BindLists();
        }

        protected void btnDeleteValves_Click(object sender, EventArgs e)
        {
            btnSaveValves_Click(null, null);

            Literal litID = (Literal)((Button)sender).Parent.FindControl("litID");
            int ID = Convert.ToInt32(litID.Text);

            tPrice price = _entity.tPrice.Where(w => w.ID == ID).FirstOrDefault();

            _entity.tPrice.Attach(price);
            _entity.tPrice.Remove(price);
            _entity.SaveChanges();

            this.BindLists();
        }
        #endregion

        #region SteelFittings
        protected void btnSaveSteelFittings_Click(object sender, EventArgs e)
        {
            this.ShowSteelFittings();

            foreach (ListViewDataItem item in lstSteelFittings.Items)
            {
                Literal litID = (Literal)item.FindControl("litID");
                TextBox txtName = (TextBox)item.FindControl("txtName");
                TextBox txtPrice = (TextBox)item.FindControl("txtPrice");

                int ID = Convert.ToInt32(litID.Text);

                tPrice price = _entity.tPrice.Where(w => w.ID == ID).FirstOrDefault();

                if (txtPrice.Text.Trim() != price.Price || txtName.Text.Trim() != price.Name)
                {
                    price.Name = txtName.Text.Trim();
                    price.Price = txtPrice.Text.Trim();

                    _entity.tPrice.Add(price);
                    _entity.Entry(price).State = System.Data.Entity.EntityState.Modified;
                    _entity.SaveChanges();
                }
            }

            btnAddSteelFittings.Visible = true;
        }

        protected void btnAddSteelFittings_Click(object sender, EventArgs e)
        {
            btnSaveSteelFittings_Click(null, null);

            tPrice price = new tPrice();
            price.PriceTypeID = 3;
            price.Name = string.Empty;
            price.Price = "0";

            _entity.tPrice.Add(price);
            _entity.SaveChanges();

            btnAddSteelFittings.Visible = false;

            this.BindLists();
        }

        protected void btnDeleteSteelFittings_Click(object sender, EventArgs e)
        {
            btnSaveSteelFittings_Click(null, null);

            Literal litID = (Literal)((Button)sender).Parent.FindControl("litID");
            int ID = Convert.ToInt32(litID.Text);

            tPrice price = _entity.tPrice.Where(w => w.ID == ID).FirstOrDefault();

            _entity.tPrice.Attach(price);
            _entity.tPrice.Remove(price);
            _entity.SaveChanges();

            this.BindLists();
        }
        #endregion
        
        #region Victaulic
        protected void btnSaveVictaulic_Click(object sender, EventArgs e)
        {
            this.ShowVictaulic();

            foreach (ListViewDataItem item in lstVictaulic.Items)
            {
                Literal litID = (Literal)item.FindControl("litID");
                TextBox txtName = (TextBox)item.FindControl("txtName");
                TextBox txtPrice = (TextBox)item.FindControl("txtPrice");

                int ID = Convert.ToInt32(litID.Text);

                tPrice price = _entity.tPrice.Where(w => w.ID == ID).FirstOrDefault();

                if (txtPrice.Text.Trim() != price.Price || txtName.Text.Trim() != price.Name)
                {
                    price.Name = txtName.Text.Trim();
                    price.Price = txtPrice.Text.Trim();

                    _entity.tPrice.Add(price);
                    _entity.Entry(price).State = System.Data.Entity.EntityState.Modified;
                    _entity.SaveChanges();
                }
            }

            btnAddVictaulic.Visible = true;
        }

        protected void btnAddVictaulic_Click(object sender, EventArgs e)
        {
            btnSaveVictaulic_Click(null, null);

            tPrice price = new tPrice();
            price.PriceTypeID = 4;
            price.Name = string.Empty;
            price.Price = "0";

            _entity.tPrice.Add(price);
            _entity.SaveChanges();

            btnAddVictaulic.Visible = false;

            this.BindLists();
        }

        protected void btnDeleteVictaulic_Click(object sender, EventArgs e)
        {
            btnSaveVictaulic_Click(null, null);

            Literal litID = (Literal)((Button)sender).Parent.FindControl("litID");
            int ID = Convert.ToInt32(litID.Text);

            tPrice price = _entity.tPrice.Where(w => w.ID == ID).FirstOrDefault();

            _entity.tPrice.Attach(price);
            _entity.tPrice.Remove(price);
            _entity.SaveChanges();

            this.BindLists();
        }
        #endregion

        #region NipplesHangers
        protected void btnSaveNipplesHangers_Click(object sender, EventArgs e)
        {
            this.ShowNipplesHangers();

            foreach (ListViewDataItem item in lstNipplesHangers.Items)
            {
                Literal litID = (Literal)item.FindControl("litID");
                TextBox txtName = (TextBox)item.FindControl("txtName");
                TextBox txtPrice = (TextBox)item.FindControl("txtPrice");

                int ID = Convert.ToInt32(litID.Text);

                tPrice price = _entity.tPrice.Where(w => w.ID == ID).FirstOrDefault();

                if (txtPrice.Text.Trim() != price.Price || txtName.Text.Trim() != price.Name)
                {
                    price.Name = txtName.Text.Trim();
                    price.Price = txtPrice.Text.Trim();

                    _entity.tPrice.Add(price);
                    _entity.Entry(price).State = System.Data.Entity.EntityState.Modified;
                    _entity.SaveChanges();
                }
            }

            btnAddNipplesHangers.Visible = true;
        }

        protected void btnAddNipplesHangers_Click(object sender, EventArgs e)
        {
            btnSaveNipplesHangers_Click(null, null);

            tPrice price = new tPrice();
            price.PriceTypeID = 5;
            price.Name = string.Empty;
            price.Price = "0";

            _entity.tPrice.Add(price);
            _entity.SaveChanges();

            btnAddNipplesHangers.Visible = false;

            this.BindLists();
        }

        protected void btnDeleteNipplesHangers_Click(object sender, EventArgs e)
        {
            btnSaveNipplesHangers_Click(null, null);

            Literal litID = (Literal)((Button)sender).Parent.FindControl("litID");
            int ID = Convert.ToInt32(litID.Text);

            tPrice price = _entity.tPrice.Where(w => w.ID == ID).FirstOrDefault();

            _entity.tPrice.Attach(price);
            _entity.tPrice.Remove(price);
            _entity.SaveChanges();

            this.BindLists();
        }
        #endregion

        #region CustomSpecials
        protected void btnSaveCustomSpecials_Click(object sender, EventArgs e)
        {
            this.ShowCustomSpecials();

            foreach (ListViewDataItem item in lstCustomSpecials.Items)
            {
                Literal litID = (Literal)item.FindControl("litID");
                TextBox txtName = (TextBox)item.FindControl("txtName");
                TextBox txtPrice = (TextBox)item.FindControl("txtPrice");

                int ID = Convert.ToInt32(litID.Text);

                tPrice price = _entity.tPrice.Where(w => w.ID == ID).FirstOrDefault();

                if (txtPrice.Text.Trim() != price.Price || txtName.Text.Trim() != price.Name)
                {
                    price.Name = txtName.Text.Trim();
                    price.Price = txtPrice.Text.Trim();

                    _entity.tPrice.Add(price);
                    _entity.Entry(price).State = System.Data.Entity.EntityState.Modified;
                    _entity.SaveChanges();
                }
            }

            btnAddCustomSpecials.Visible = true;
        }

        protected void btnAddCustomSpecials_Click(object sender, EventArgs e)
        {
            btnSaveCustomSpecials_Click(null, null);

            tPrice price = new tPrice();
            price.PriceTypeID = 6;
            price.Name = string.Empty;
            price.Price = "0";

            _entity.tPrice.Add(price);
            _entity.SaveChanges();

            btnAddCustomSpecials.Visible = false;

            this.BindLists();
        }

        protected void btnDeleteCustomSpecials_Click(object sender, EventArgs e)
        {
            btnSaveCustomSpecials_Click(null, null);

            Literal litID = (Literal)((Button)sender).Parent.FindControl("litID");
            int ID = Convert.ToInt32(litID.Text);

            tPrice price = _entity.tPrice.Where(w => w.ID == ID).FirstOrDefault();

            _entity.tPrice.Attach(price);
            _entity.tPrice.Remove(price);
            _entity.SaveChanges();

            this.BindLists();
        }
        #endregion

        #region Heads
        protected void btnSaveHeads_Click(object sender, EventArgs e)
        {
            this.ShowHeads();

            foreach (ListViewDataItem item in lstHeads.Items)
            {
                Literal litID = (Literal)item.FindControl("litID");
                TextBox txtName = (TextBox)item.FindControl("txtName");
                TextBox txtPrice = (TextBox)item.FindControl("txtPrice");

                int ID = Convert.ToInt32(litID.Text);

                tPrice price = _entity.tPrice.Where(w => w.ID == ID).FirstOrDefault();

                if (txtPrice.Text.Trim() != price.Price || txtName.Text.Trim() != price.Name)
                {
                    price.Name = txtName.Text.Trim();
                    price.Price = txtPrice.Text.Trim();

                    _entity.tPrice.Add(price);
                    _entity.Entry(price).State = System.Data.Entity.EntityState.Modified;
                    _entity.SaveChanges();
                }
            }

            btnAddHeads.Visible = true;
        }

        protected void btnAddHeads_Click(object sender, EventArgs e)
        {
            btnSaveHeads_Click(null, null);

            tPrice price = new tPrice();
            price.PriceTypeID = 7;
            price.Name = string.Empty;
            price.Price = "0";

            _entity.tPrice.Add(price);
            _entity.SaveChanges();

            btnAddHeads.Visible = false;

            this.BindLists();
        }

        protected void btnDeleteHeads_Click(object sender, EventArgs e)
        {
            btnSaveHeads_Click(null, null);

            Literal litID = (Literal)((Button)sender).Parent.FindControl("litID");
            int ID = Convert.ToInt32(litID.Text);

            tPrice price = _entity.tPrice.Where(w => w.ID == ID).FirstOrDefault();

            _entity.tPrice.Attach(price);
            _entity.tPrice.Remove(price);
            _entity.SaveChanges();

            this.BindLists();
        }
        #endregion

        #region Devices
        protected void btnSaveDevices_Click(object sender, EventArgs e)
        {
            this.ShowDevices();

            foreach (ListViewDataItem item in lstDevices.Items)
            {
                Literal litID = (Literal)item.FindControl("litID");
                TextBox txtName = (TextBox)item.FindControl("txtName");
                TextBox txtPrice = (TextBox)item.FindControl("txtPrice");

                int ID = Convert.ToInt32(litID.Text);

                tPrice price = _entity.tPrice.Where(w => w.ID == ID).FirstOrDefault();

                if (txtPrice.Text.Trim() != price.Price || txtName.Text.Trim() != price.Name)
                {
                    price.Name = txtName.Text.Trim();
                    price.Price = txtPrice.Text.Trim();

                    _entity.tPrice.Add(price);
                    _entity.Entry(price).State = System.Data.Entity.EntityState.Modified;
                    _entity.SaveChanges();
                }
            }

            btnAddDevices.Visible = true;
        }

        protected void btnAddDevices_Click(object sender, EventArgs e)
        {
            btnSaveDevices_Click(null, null);

            tPrice price = new tPrice();
            price.PriceTypeID = 8;
            price.Name = string.Empty;
            price.Price = "0";

            _entity.tPrice.Add(price);
            _entity.SaveChanges();

            btnAddDevices.Visible = false;

            this.BindLists();
        }

        protected void btnDeleteDevices_Click(object sender, EventArgs e)
        {
            btnSaveDevices_Click(null, null);

            Literal litID = (Literal)((Button)sender).Parent.FindControl("litID");
            int ID = Convert.ToInt32(litID.Text);

            tPrice price = _entity.tPrice.Where(w => w.ID == ID).FirstOrDefault();

            _entity.tPrice.Attach(price);
            _entity.tPrice.Remove(price);
            _entity.SaveChanges();

            this.BindLists();
        }
        #endregion

        #region PlasticFittings
        protected void btnSavePlasticFittings_Click(object sender, EventArgs e)
        {
            this.ShowPlasticFittings();

            foreach (ListViewDataItem item in lstPlasticFittings.Items)
            {
                Literal litID = (Literal)item.FindControl("litID");
                TextBox txtName = (TextBox)item.FindControl("txtName");
                TextBox txtPrice = (TextBox)item.FindControl("txtPrice");

                int ID = Convert.ToInt32(litID.Text);

                tPrice price = _entity.tPrice.Where(w => w.ID == ID).FirstOrDefault();

                if (txtPrice.Text.Trim() != price.Price || txtName.Text.Trim() != price.Name)
                {
                    price.Name = txtName.Text.Trim();
                    price.Price = txtPrice.Text.Trim();

                    _entity.tPrice.Add(price);
                    _entity.Entry(price).State = System.Data.Entity.EntityState.Modified;
                    _entity.SaveChanges();
                }
            }

            btnAddPlasticFittings.Visible = true;
        }

        protected void btnAddPlasticFittings_Click(object sender, EventArgs e)
        {
            btnSavePlasticFittings_Click(null, null);

            tPrice price = new tPrice();
            price.PriceTypeID = 9;
            price.Name = string.Empty;
            price.Price = "0";

            _entity.tPrice.Add(price);
            _entity.SaveChanges();

            btnAddPlasticFittings.Visible = false;

            this.BindLists();
        }

        protected void btnDeletePlasticFittings_Click(object sender, EventArgs e)
        {
            btnSavePlasticFittings_Click(null, null);

            Literal litID = (Literal)((Button)sender).Parent.FindControl("litID");
            int ID = Convert.ToInt32(litID.Text);

            tPrice price = _entity.tPrice.Where(w => w.ID == ID).FirstOrDefault();

            _entity.tPrice.Attach(price);
            _entity.tPrice.Remove(price);
            _entity.SaveChanges();

            this.BindLists();
        }
        #endregion

        #region FlangeMaterial
        protected void btnSaveFlangeMaterial_Click(object sender, EventArgs e)
        {
            this.ShowFlangeMaterial();

            foreach (ListViewDataItem item in lstFlangeMaterial.Items)
            {
                Literal litID = (Literal)item.FindControl("litID");
                TextBox txtName = (TextBox)item.FindControl("txtName");
                TextBox txtPrice = (TextBox)item.FindControl("txtPrice");

                int ID = Convert.ToInt32(litID.Text);

                tPrice price = _entity.tPrice.Where(w => w.ID == ID).FirstOrDefault();

                if (txtPrice.Text.Trim() != price.Price || txtName.Text.Trim() != price.Name)
                {
                    price.Name = txtName.Text.Trim();
                    price.Price = txtPrice.Text.Trim();

                    _entity.tPrice.Add(price);
                    _entity.Entry(price).State = System.Data.Entity.EntityState.Modified;
                    _entity.SaveChanges();
                }
            }

            btnAddFlangeMaterial.Visible = true;
        }
        
        protected void btnAddFlangeMaterial_Click(object sender, EventArgs e)
        {
            btnSaveFlangeMaterial_Click(null, null);

            tPrice price = new tPrice();
            price.PriceTypeID = 10;
            price.Name = string.Empty;
            price.Price = "0";

            _entity.tPrice.Add(price);
            _entity.SaveChanges();

            btnAddFlangeMaterial.Visible = false;

            this.BindLists();
        }

        protected void btnDeleteFlangeMaterial_Click(object sender, EventArgs e)
        {
            btnSaveFlangeMaterial_Click(null, null);

            Literal litID = (Literal)((Button)sender).Parent.FindControl("litID");
            int ID = Convert.ToInt32(litID.Text);

            tPrice price = _entity.tPrice.Where(w => w.ID == ID).FirstOrDefault();

            _entity.tPrice.Attach(price);
            _entity.tPrice.Remove(price);
            _entity.SaveChanges();

            this.BindLists();
        }
        #endregion
        
        #region BackFlowPreventer
        protected void btnSaveBackFlowPreventer_Click(object sender, EventArgs e)
        {
            this.ShowBackFlowPreventer();

            foreach (ListViewDataItem item in lstBackFlowPreventer.Items)
            {
                Literal litID = (Literal)item.FindControl("litID");
                TextBox txtName = (TextBox)item.FindControl("txtName");
                TextBox txtPrice = (TextBox)item.FindControl("txtPrice");

                int ID = Convert.ToInt32(litID.Text);

                tPrice price = _entity.tPrice.Where(w => w.ID == ID).FirstOrDefault();

                if (txtPrice.Text.Trim() != price.Price || txtName.Text.Trim() != price.Name)
                {
                    price.Name = txtName.Text.Trim();
                    price.Price = txtPrice.Text.Trim();

                    _entity.tPrice.Add(price);
                    _entity.Entry(price).State = System.Data.Entity.EntityState.Modified;
                    _entity.SaveChanges();
                }
            }

            btnAddBackFlowPreventer.Visible = true;
        }

        protected void btnAddBackFlowPreventer_Click(object sender, EventArgs e)
        {
            btnSaveBackFlowPreventer_Click(null, null);

            tPrice price = new tPrice();
            price.PriceTypeID = 11;
            price.Name = string.Empty;
            price.Price = "0";


            _entity.tPrice.Add(price);
            _entity.SaveChanges();

            btnAddBackFlowPreventer.Visible = false;

            this.BindLists();
        }

        protected void btnDeleteBackFlowPreventer_Click(object sender, EventArgs e)
        {
            btnSaveBackFlowPreventer_Click(null, null);

            Literal litID = (Literal)((Button)sender).Parent.FindControl("litID");
            int ID = Convert.ToInt32(litID.Text);

            tPrice price = _entity.tPrice.Where(w => w.ID == ID).FirstOrDefault();

            _entity.tPrice.Attach(price);
            _entity.tPrice.Remove(price);
            _entity.SaveChanges();

            this.BindLists();
        }
        #endregion

        #region UndergroundMaterial
        protected void btnSaveUndergroundMaterial_Click(object sender, EventArgs e)
        {
            this.ShowUndergroundMaterial();

            foreach (ListViewDataItem item in lstUndergroundMaterial.Items)
            {
                Literal litID = (Literal)item.FindControl("litID");
                TextBox txtName = (TextBox)item.FindControl("txtName");
                TextBox txtPrice = (TextBox)item.FindControl("txtPrice");

                int ID = Convert.ToInt32(litID.Text);

                tPrice price = _entity.tPrice.Where(w => w.ID == ID).FirstOrDefault();

                if (txtPrice.Text.Trim() != price.Price || txtName.Text.Trim() != price.Name)
                {
                    price.Name = txtName.Text.Trim();
                    price.Price = txtPrice.Text.Trim();

                    _entity.tPrice.Add(price);
                    _entity.Entry(price).State = System.Data.Entity.EntityState.Modified;
                    _entity.SaveChanges();
                }
            }

            btnAddUndergroundMaterial.Visible = true;
        }

        protected void btnAddUndergroundMaterial_Click(object sender, EventArgs e)
        {
            btnSaveUndergroundMaterial_Click(null, null);

            tPrice price = new tPrice();
            price.PriceTypeID = 12;
            price.Name = string.Empty;
            price.Price = "0";

            _entity.tPrice.Add(price);
            _entity.SaveChanges();

            btnAddUndergroundMaterial.Visible = false;

            this.BindLists();
        }

        protected void btnDeleteUndergroundMaterial_Click(object sender, EventArgs e)
        {
            btnSaveUndergroundMaterial_Click(null, null);

            Literal litID = (Literal)((Button)sender).Parent.FindControl("litID");
            int ID = Convert.ToInt32(litID.Text);

            tPrice price = _entity.tPrice.Where(w => w.ID == ID).FirstOrDefault();

            _entity.tPrice.Attach(price);
            _entity.tPrice.Remove(price);
            _entity.SaveChanges();

            this.BindLists();
        }
        #endregion

        #region GalvanizedVictaulic
        protected void btnSaveGalvanizedVictaulic_Click(object sender, EventArgs e)
        {
            this.ShowGalvanizedVictaulic();

            foreach (ListViewDataItem item in lstGalvanizedVictaulic.Items)
            {
                Literal litID = (Literal)item.FindControl("litID");
                TextBox txtName = (TextBox)item.FindControl("txtName");
                TextBox txtPrice = (TextBox)item.FindControl("txtPrice");

                int ID = Convert.ToInt32(litID.Text);

                tPrice price = _entity.tPrice.Where(w => w.ID == ID).FirstOrDefault();

                if (txtPrice.Text.Trim() != price.Price || txtName.Text.Trim() != price.Name)
                {
                    price.Name = txtName.Text.Trim();
                    price.Price = txtPrice.Text.Trim();

                    _entity.tPrice.Add(price);
                    _entity.Entry(price).State = System.Data.Entity.EntityState.Modified;
                    _entity.SaveChanges();
                }
            }

            btnAddGalvanizedVictaulic.Visible = true;
        }

        protected void btnAddGalvanizedVictaulic_Click(object sender, EventArgs e)
        {
            btnSaveGalvanizedVictaulic_Click(null, null);

            tPrice price = new tPrice();
            price.PriceTypeID = 13;
            price.Name = string.Empty;
            price.Price = "0";

            _entity.tPrice.Add(price);
            _entity.SaveChanges();

            btnAddGalvanizedVictaulic.Visible = false;

            this.BindLists();
        }

        protected void btnDeleteGalvanizedVictaulic_Click(object sender, EventArgs e)
        {
            btnSaveGalvanizedVictaulic_Click(null, null);

            Literal litID = (Literal)((Button)sender).Parent.FindControl("litID");
            int ID = Convert.ToInt32(litID.Text);

            tPrice price = _entity.tPrice.Where(w => w.ID == ID).FirstOrDefault();

            _entity.tPrice.Attach(price);
            _entity.tPrice.Remove(price);
            _entity.SaveChanges();

            this.BindLists();
        }
        #endregion
    }
}