class Rectangle:
    def __init__(self,width=0, height=0):
        self.__width = 0
        self.__height = 0

    @property
    def width(self):
        return self.__width

    @width.setter
    def width(self, width):
        if not isintance(width, int):
            raise TypeError("width must be an integer")
        if width < 0:
            raise ValueError("width must be >= 0")
        self.__width = width
        return self.__width

    @property
    def height(self):
        return self.__height

    @height.setter
    def height(self, height):
        if not isintance(height, int):
            raise TypeError("height must be an integer")
        if height < 0:
            raise ValueError("height must be >= 0")
