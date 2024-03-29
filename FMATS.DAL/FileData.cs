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
    
    public partial class FileData
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public FileData()
        {
            this.StatusHistories = new HashSet<StatusHistory>();
        }
    
        public int FileDataId { get; set; }
        public string FileId { get; set; }
        public string FileNoExt { get; set; }
        public string FileNoInt { get; set; }
        public Nullable<int> ClientId { get; set; }
        public Nullable<int> FileCategoryId { get; set; }
        public Nullable<int> FilePriorityId { get; set; }
        public string CurrentStatus { get; set; }
        public Nullable<int> CurrentAgentId { get; set; }
        public Nullable<System.DateTime> FileEntredOn { get; set; }
        public Nullable<System.DateTime> FileDeliveredOn { get; set; }
        public string SubjectBrief { get; set; }
        public string SubjectDesc { get; set; }
        public string CmoSection { get; set; }
        public System.DateTime LastUpdated { get; set; }
        public string FileCode { get; set; }
        public string ContactPersonName { get; set; }
        public Nullable<int> ContactPersonNumber { get; set; }
        public string FundType { get; set; }
        public string FundSource { get; set; }
        public string Scheme { get; set; }
        public Nullable<int> Year { get; set; }
        public Nullable<decimal> AmountProposed { get; set; }
        public Nullable<decimal> AmountApproved { get; set; }
        public Nullable<decimal> AmountMisc { get; set; }
        public string File_misc1 { get; set; }
        public string File_misc2 { get; set; }
        public string File_misc3 { get; set; }
        public int CreatedBy { get; set; }
        public System.DateTime CreatedDate { get; set; }
        public Nullable<int> ModifiedBy { get; set; }
        public Nullable<System.DateTime> ModifiedDate { get; set; }
    
        public virtual Client Client { get; set; }
        public virtual FileCategory FileCategory { get; set; }
        public virtual FilePriority FilePriority { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<StatusHistory> StatusHistories { get; set; }
    }
}
