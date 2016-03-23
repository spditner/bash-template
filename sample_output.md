    ---------
    # Template: templates/test.conf
    [config]
    # Spaces
    a: 123
    
    # No spaces
    bee: dd, dd
    
    # If block
    
    ---------
    # Sample of including one template in another
    # Template: templates/include.conf
    # Template: templates/test.conf
    [config]
    # Spaces
    a: foo
    
    # No spaces
    bee: "dd, dd"
    
    # If block
    dododod
    ---------
