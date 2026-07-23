.class public abstract Lcom/facebook/ads/redexgen/X/Pi;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static A00:Ljava/lang/reflect/Method;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1561
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "oH0n9xAbcML0pK3kOEyCMAjio6eGJJqD"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "GHXQlAAFRKh09bddZmMmvyBDBjZAjYiv"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "8JVYZEo4WjVv17g9aGlnSLFSGTnTlVlV"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "9RFKXGXKeKZpKk57elbUgU5Rr7HYGf7i"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "pphhsLP65zu6ZwDFb6wQsw2VBCTq4rPR"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "7bQdqYtwnU89UvKxRDm92gBnYRs5HvHU"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "CoVMihrSOvAeKI017KlJ1GeUcMhjoF5o"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "1TwObRYenAx9Xxo2pcbqEN0Hah2BLlTA"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Pi;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Pi;->A04()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x19

    if-ne v1, v0, :cond_0

    .line 1562
    :try_start_0
    const-class v3, Landroid/view/ViewConfiguration;

    const/16 v2, 0x52

    const/16 v1, 0x15

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Pi;->A03(III)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    .line 1563
    invoke-virtual {v3, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Pi;->A00:Ljava/lang/reflect/Method;

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1564
    .local v0, "e":Ljava/lang/Exception;
    :catch_0
    const/16 v2, 0x42

    const/16 v1, 0x10

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Pi;->A03(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x42

    const/16 v0, 0x30

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Pi;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public static A00(Landroid/view/ViewConfiguration;Landroid/content/Context;)F
    .locals 2

    .line 58168
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt v1, v0, :cond_1

    .line 58169
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledHorizontalScrollFactor()F

    move-result p1

    sget-object p0, Lcom/facebook/ads/redexgen/X/Pi;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, p0, v0

    const/4 v0, 0x5

    aget-object p0, p0, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object p0, Lcom/facebook/ads/redexgen/X/Pi;->A02:[Ljava/lang/String;

    const-string v1, "0Ki4JXOncLynPK6ypbmoO1JP8yrdQeak"

    const/4 v0, 0x0

    aput-object v1, p0, v0

    const-string v1, "cqlD2dZIdmZjhBfVp9VUMkw1vxAb5RnC"

    const/4 v0, 0x1

    aput-object v1, p0, v0

    return p1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 58170
    :cond_1
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/Pi;->A02(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v0

    return v0
.end method

.method public static A01(Landroid/view/ViewConfiguration;Landroid/content/Context;)F
    .locals 2

    .line 58171
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt v1, v0, :cond_0

    .line 58172
    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result v0

    return v0

    .line 58173
    :cond_0
    invoke-static {p0, p1}, Lcom/facebook/ads/redexgen/X/Pi;->A02(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result p1

    sget-object p0, Lcom/facebook/ads/redexgen/X/Pi;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, p0, v0

    const/4 v0, 0x6

    aget-object p0, p0, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object p0, Lcom/facebook/ads/redexgen/X/Pi;->A02:[Ljava/lang/String;

    const-string v1, "MeYqCAiPW6zL6oB0sS71srseS72Ki7Wj"

    const/4 v0, 0x2

    aput-object v1, p0, v0

    return p1

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02(Landroid/view/ViewConfiguration;Landroid/content/Context;)F
    .locals 6

    .line 58174
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x19

    if-lt v1, v0, :cond_0

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pi;->A00:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 58175
    :try_start_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/Pi;->A00:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    return v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58176
    .local v0, "e":Ljava/lang/Exception;
    :catch_0
    const/16 v2, 0x42

    const/16 v1, 0x10

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Pi;->A03(III)Ljava/lang/String;

    move-result-object v5

    const/4 p0, 0x0

    const/16 v4, 0x42

    const/16 v3, 0x30

    sget-object v2, Lcom/facebook/ads/redexgen/X/Pi;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x1b

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Pi;->A02:[Ljava/lang/String;

    const-string v1, "k1KS2t9KIGKI4w6R1E4j5X81r1grad3n"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "1ij9jDuHWzbgayt92o13kt38ESGEmluu"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-static {p0, v4, v3}, Lcom/facebook/ads/redexgen/X/Pi;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58177
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 58178
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 58179
    const v1, 0x101004d

    const/4 v0, 0x1

    invoke-virtual {v2, v1, v3, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58180
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    return v0

    .line 58181
    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pi;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x3a

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A04()V
    .locals 4

    const/16 v3, 0x67

    sget-object v1, Lcom/facebook/ads/redexgen/X/Pi;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x75

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Pi;->A02:[Ljava/lang/String;

    const-string v1, "6RSw2BIRooHqNQZo6O6uqDXkY67gyuyt"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "6n2viGPYj5SHhnpzGoLQcwunY5cXqvEW"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Pi;->A01:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x49t
        0x65t
        0x7ft
        0x66t
        0x6et
        0x2at
        0x64t
        0x65t
        0x7et
        0x2at
        0x6ct
        0x63t
        0x64t
        0x6et
        0x2at
        0x67t
        0x6ft
        0x7et
        0x62t
        0x65t
        0x6et
        0x2at
        0x6dt
        0x6ft
        0x7et
        0x59t
        0x69t
        0x6bt
        0x66t
        0x6ft
        0x6et
        0x59t
        0x69t
        0x78t
        0x65t
        0x66t
        0x66t
        0x4ct
        0x6bt
        0x69t
        0x7et
        0x65t
        0x78t
        0x22t
        0x23t
        0x2at
        0x65t
        0x64t
        0x2at
        0x5ct
        0x63t
        0x6ft
        0x7dt
        0x49t
        0x65t
        0x64t
        0x6ct
        0x63t
        0x6dt
        0x7ft
        0x78t
        0x6bt
        0x7et
        0x63t
        0x65t
        0x64t
        0x49t
        0x76t
        0x7at
        0x68t
        0x5ct
        0x70t
        0x71t
        0x79t
        0x76t
        0x78t
        0x5ct
        0x70t
        0x72t
        0x6ft
        0x7et
        0x6bt
        0x3bt
        0x39t
        0x28t
        0xft
        0x3ft
        0x3dt
        0x30t
        0x39t
        0x38t
        0xft
        0x3ft
        0x2et
        0x33t
        0x30t
        0x30t
        0x1at
        0x3dt
        0x3ft
        0x28t
        0x33t
        0x2et
    .end array-data
.end method
