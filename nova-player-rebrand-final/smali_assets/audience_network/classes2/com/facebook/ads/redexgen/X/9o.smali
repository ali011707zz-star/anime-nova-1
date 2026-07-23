.class public final Lcom/facebook/ads/redexgen/X/9o;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# static fields
.field public static A08:[B

.field public static A09:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:Lcom/facebook/ads/redexgen/X/A6;

.field public A02:Lcom/facebook/ads/redexgen/X/DC;

.field public A03:Lcom/facebook/ads/redexgen/X/FF;

.field public A04:Lcom/facebook/ads/redexgen/X/ku;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "MERGED"
        }
        value = "https://github.com/androidx/media/pull/1754"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/ku<",
            "Lcom/facebook/ads/redexgen/X/Fb;",
            ">;"
        }
    .end annotation
.end field

.field public A05:Ljava/lang/String;

.field public final A06:Lcom/facebook/ads/redexgen/X/5Y;

.field public final A07:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 589
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "634gowWrnODsCbHJW3RM2adSB8UjvpNK"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "SJrAWOr70TCHX"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "EwIuJu9eGNp0k"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "E6EVZDT"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "sHeITXs"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "FXQ6HdUX"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "YL7g5rxYaYN1DF5ZV43is2fGGs0zV37S"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "j2oNEgxbTlE4krYsb5twTfwtoUHd8Sk9"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/9o;->A09:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/9o;->A03()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5Y;)V
    .locals 1

    .line 25786
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25787
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/9o;->A06:Lcom/facebook/ads/redexgen/X/5Y;

    .line 25788
    invoke-static {}, Lcom/facebook/ads/redexgen/X/A3;->A01()Lcom/facebook/ads/redexgen/X/A6;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A01:Lcom/facebook/ads/redexgen/X/A6;

    .line 25789
    new-instance v0, Lcom/facebook/ads/redexgen/X/n9;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/n9;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A03:Lcom/facebook/ads/redexgen/X/FF;

    .line 25790
    const/high16 v0, 0x100000

    iput v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A00:I

    .line 25791
    new-instance v0, Lcom/facebook/ads/redexgen/X/nj;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/nj;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A04:Lcom/facebook/ads/redexgen/X/ku;

    .line 25792
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/HD;Lcom/facebook/ads/redexgen/X/8O;)Lcom/facebook/ads/redexgen/X/nu;
    .locals 1

    .line 25793
    new-instance v0, Lcom/facebook/ads/redexgen/X/nu;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/nu;-><init>(Lcom/facebook/ads/redexgen/X/HD;)V

    return-object v0
.end method

.method public static synthetic A01()Lcom/facebook/ads/redexgen/X/Fb;
    .locals 1

    .line 25794
    const/4 v0, 0x0

    return-object v0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/9o;->A08:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v3, p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/9o;->A09:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x74

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/9o;->A09:[Ljava/lang/String;

    const-string v1, "2gbF6ls"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    if-ge p1, v3, :cond_1

    aget-byte v0, p0, p1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1a

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x6f

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/9o;->A08:[B

    return-void

    :array_0
    .array-data 1
        0x14t
        0x23t
        0x23t
        0x3et
        0x23t
        0x71t
        0x38t
        0x3ft
        0x22t
        0x25t
        0x30t
        0x3ft
        0x25t
        0x38t
        0x30t
        0x25t
        0x38t
        0x3ft
        0x36t
        0x71t
        0x15t
        0x34t
        0x37t
        0x30t
        0x24t
        0x3dt
        0x25t
        0x14t
        0x29t
        0x25t
        0x23t
        0x30t
        0x32t
        0x25t
        0x3et
        0x23t
        0x22t
        0x17t
        0x30t
        0x32t
        0x25t
        0x3et
        0x23t
        0x28t
        0x6at
        0x66t
        0x64t
        0x27t
        0x6ft
        0x68t
        0x6at
        0x6ct
        0x6bt
        0x66t
        0x66t
        0x62t
        0x27t
        0x68t
        0x6dt
        0x7at
        0x27t
        0x68t
        0x67t
        0x6dt
        0x7bt
        0x66t
        0x60t
        0x6dt
        0x71t
        0x27t
        0x64t
        0x6ct
        0x6dt
        0x60t
        0x68t
        0x3at
        0x27t
        0x6ct
        0x71t
        0x7dt
        0x7bt
        0x68t
        0x6at
        0x7dt
        0x66t
        0x7bt
        0x27t
        0x4dt
        0x6ct
        0x6ft
        0x68t
        0x7ct
        0x65t
        0x7dt
        0x4ct
        0x71t
        0x7dt
        0x7bt
        0x68t
        0x6at
        0x7dt
        0x66t
        0x7bt
        0x7at
        0x4ft
        0x68t
        0x6at
        0x7dt
        0x66t
        0x7bt
        0x70t
    .end array-data
.end method


# virtual methods
.method public final A04(Landroid/net/Uri;)Lcom/facebook/ads/redexgen/X/9n;
    .locals 11
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "Custom reflection logic to avoid loading DefaultExtractorsFactory"
    .end annotation

    .line 25795
    const/4 v2, 0x0

    const/16 v1, 0x2c

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9o;->A02(III)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/DC;

    if-nez v0, :cond_0

    .line 25796
    :try_start_0
    const/16 v3, 0x2c

    const/16 v1, 0x43

    const/16 v0, 0x13

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/9o;->A02(III)Ljava/lang/String;

    move-result-object v0

    .line 25797
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v0, Lcom/facebook/ads/redexgen/X/HD;

    .line 25798
    invoke-virtual {v1, v0}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x0

    new-array v0, v3, [Ljava/lang/Class;

    .line 25799
    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 25800
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lcom/facebook/ads/androidx/media3/extractor/ExtractorsFactory;>;"
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/HD;

    .line 25801
    .local v2, "extractorsFactory":Lcom/facebook/ads/redexgen/X/HD;
    new-instance v0, Lcom/facebook/ads/redexgen/X/nl;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/nl;-><init>(Lcom/facebook/ads/redexgen/X/HD;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/DC;

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25802
    :catch_0
    move-exception v1

    .line 25803
    .local v1, "e":Ljava/lang/IllegalAccessException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 25804
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 25805
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 25806
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v1

    .line 25807
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 25808
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v1

    .line 25809
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 25810
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v1

    .line 25811
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 25812
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :goto_0
    new-instance v2, Lcom/facebook/ads/redexgen/X/9n;

    new-instance v0, Lcom/facebook/ads/redexgen/X/2u;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/2u;-><init>()V

    .line 25813
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/2u;->A00(Landroid/net/Uri;)Lcom/facebook/ads/redexgen/X/2u;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A05:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2u;->A02(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/2u;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/9o;->A07:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/2u;->A01(Ljava/lang/Object;)Lcom/facebook/ads/redexgen/X/2u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/2u;->A05()Lcom/facebook/ads/redexgen/X/q7;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/9o;->A06:Lcom/facebook/ads/redexgen/X/5Y;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/9o;->A02:Lcom/facebook/ads/redexgen/X/DC;

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/9o;->A01:Lcom/facebook/ads/redexgen/X/A6;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/9o;->A03:Lcom/facebook/ads/redexgen/X/FF;

    iget v8, p0, Lcom/facebook/ads/redexgen/X/9o;->A00:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/facebook/ads/redexgen/X/9n;-><init>(Lcom/facebook/ads/redexgen/X/q7;Lcom/facebook/ads/redexgen/X/5Y;Lcom/facebook/ads/redexgen/X/DC;Lcom/facebook/ads/redexgen/X/A6;Lcom/facebook/ads/redexgen/X/FF;ILcom/facebook/ads/redexgen/X/ku;Lcom/facebook/ads/redexgen/X/1e;)V

    .line 25814
    return-object v2
.end method
