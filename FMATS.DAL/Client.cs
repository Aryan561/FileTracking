//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace FMATS.DAL
{
    using System;
    using System.Collections.Generic;
    
    public partial class Client
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Client()
        {
            this.FileDatas = new HashSet<FileData>();
        }
    
        public int ClientId { get; set; }
        public string ClientName { get; set; }
        public int ClientCategoryId { get; set; }
        public Nullable<long> ClientMobile { get; set; }
        public string ClientEmail { get; set; }
        public string ClientAddress { get; set; }
        public string ClientDistrict { get; set; }
        public string Client_misc1 { get; set; }
        public string Client_misc2 { get; set; }
        public string Client_misc3 { get; set; }
        public int CreatedBy { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public Nullable<int> ModifiedBy { get; set; }
        public Nullable<System.DateTime> ModifiedDate { get; set; }
        public Nullable<bool> Active { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<FileData> FileDatas { get; set; }
        public virtual ClientCategory ClientCategory { get; set; }
    }
}
