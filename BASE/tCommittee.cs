
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------


namespace BASE
{

using System;
    using System.Collections.Generic;
    
public partial class tCommittee
{

    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
    public tCommittee()
    {

        this.tContactCommittee = new HashSet<tContactCommittee>();

    }


    public int CommitteeID { get; set; }

    public string Name { get; set; }

    public string Description { get; set; }

    public Nullable<bool> Disabled { get; set; }



    [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]

    public virtual ICollection<tContactCommittee> tContactCommittee { get; set; }

}

}
