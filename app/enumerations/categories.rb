class Categories < EnumerateIt::Base
    associate_values(
        :tool,
        :material,
    )
end