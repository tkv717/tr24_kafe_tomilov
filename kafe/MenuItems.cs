//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace kafeuyt
{
    using System;
    using System.Collections.Generic;
    
    public partial class MenuItems
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public MenuItems()
        {
            this.Orders = new HashSet<Orders>();
        }
    
        public int item_id { get; set; }
        public string item_name { get; set; }
        public int item_type_id { get; set; }
        public decimal price { get; set; }
        public string description { get; set; }
    
        public virtual Items_type Items_type { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Orders> Orders { get; set; }
    }
}