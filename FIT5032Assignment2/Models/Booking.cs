//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace FIT5032Assignment2.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Booking
    {
        public int BookingId { get; set; }
        public string GPGPId { get; set; }
        public string PatientPatientId { get; set; }
    
        public virtual GP GP { get; set; }
        public virtual Patient Patient { get; set; }
    }
}
