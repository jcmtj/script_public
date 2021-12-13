$trgtPath = $args[0]

ls -File -Path $trgtPath -Recurse | % { $fi = [System.IO.FileInfo]::new($_.FullName);
    if(!$fi.Attributes.HasFlag([System.IO.FileAttributes]::Encrypted)) {
        $fi.FullName;
    }
}
