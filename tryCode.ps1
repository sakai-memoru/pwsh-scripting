$map = @{
    a = 1
    b = 2
    c = 3
}

forEach($key in $map.Keys){
    Write-Host "$key -> $($map[$key])"
}

foreach ($key in $map.Keys){
    Write-Debug ("$key :" + $($map[$key]))
}