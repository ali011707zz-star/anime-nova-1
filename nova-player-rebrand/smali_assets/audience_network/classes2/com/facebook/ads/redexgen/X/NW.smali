.class public final enum Lcom/facebook/ads/redexgen/X/NW;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/NY;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdCreativeType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/facebook/ads/redexgen/X/NW;",
        ">;"
    }
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final synthetic A03:[Lcom/facebook/ads/redexgen/X/NW;

.field public static final enum A04:Lcom/facebook/ads/redexgen/X/NW;

.field public static final enum A05:Lcom/facebook/ads/redexgen/X/NW;


# instance fields
.field public final A00:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1445
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "wiqydbsLJDwKBvl8t"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "43d9HmwIqa0UmHFIq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "pggHvImyjq29EoPdIbNPEyFQYY47zx5L"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "Y7HVzfyHvrAyRWnGs1HIvpl"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "hbOUIe"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Z6uWuqD1EDiaZecfB"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "H4uwq6"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "uO2zzJUzM8GpymnowP"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/NW;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/NW;->A02()V

    const/4 v4, 0x0

    const/16 v2, 0x17

    const/16 v1, 0xe

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NW;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xe

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NW;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/NW;

    invoke-direct {v0, v1, v4, v3}, Lcom/facebook/ads/redexgen/X/NW;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/NW;->A04:Lcom/facebook/ads/redexgen/X/NW;

    .line 1446
    const/4 v4, 0x1

    const/16 v2, 0x25

    const/16 v1, 0x9

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NW;->A01(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xe

    const/16 v1, 0x9

    const/16 v0, 0x57

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NW;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/NW;

    invoke-direct {v0, v1, v4, v3}, Lcom/facebook/ads/redexgen/X/NW;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/NW;->A05:Lcom/facebook/ads/redexgen/X/NW;

    .line 1447
    invoke-static {}, Lcom/facebook/ads/redexgen/X/NW;->A03()[Lcom/facebook/ads/redexgen/X/NW;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/NW;->A03:[Lcom/facebook/ads/redexgen/X/NW;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 54337
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54338
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/NW;->A00:Ljava/lang/String;

    .line 54339
    return-void
.end method

.method public static A00(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/NW;
    .locals 3

    .line 54340
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 54341
    sget-object p0, Lcom/facebook/ads/redexgen/X/NW;->A05:Lcom/facebook/ads/redexgen/X/NW;

    sget-object v1, Lcom/facebook/ads/redexgen/X/NW;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0x16

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x61

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/NW;->A02:[Ljava/lang/String;

    const-string v1, "wI7Mn7kKRaTG8Mvy9wZ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-object p0

    .line 54342
    :sswitch_0
    const/16 v2, 0x17

    const/16 v1, 0xe

    const/16 v0, 0x76

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NW;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    sget-object v1, Lcom/facebook/ads/redexgen/X/NW;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/NW;->A02:[Ljava/lang/String;

    const-string v1, "bogI3bwqsUF49nq3u6zYPkLLi"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz p0, :cond_0

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/NW;->A02:[Ljava/lang/String;

    const-string v1, "XJGJWrBy1UqGLv6Rhel9amw"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "eBE1kZuIIDAbDWtcc"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz p0, :cond_0

    goto :goto_1

    :sswitch_1
    const/16 v2, 0x25

    const/16 v1, 0x9

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/NW;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 54343
    :pswitch_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/NW;->A04:Lcom/facebook/ads/redexgen/X/NW;

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x34ad3050 -> :sswitch_1
        0x557e9433 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/NW;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v3, p0, p1

    sget-object v2, Lcom/facebook/ads/redexgen/X/NW;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/NW;->A02:[Ljava/lang/String;

    const-string v1, "YRQbc7SZzU6A3uauK9TIi077IJfJ6"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    sub-int/2addr v3, p2

    add-int/lit8 v0, v3, -0x3b

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x2e

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/NW;->A01:[B

    sget-object v2, Lcom/facebook/ads/redexgen/X/NW;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/NW;->A02:[Ljava/lang/String;

    const-string v1, "ja6ocK"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "zrwWzc"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        -0x54t
        -0x48t
        -0x49t
        -0x43t
        -0x52t
        -0x3ft
        -0x43t
        -0x42t
        -0x56t
        -0x4bt
        -0x38t
        -0x56t
        -0x47t
        -0x47t
        -0x1et
        -0x2dt
        -0x27t
        -0x29t
        -0xft
        -0x1et
        -0x1ft
        -0x1bt
        -0x1at
        0x14t
        0x20t
        0x1ft
        0x25t
        0x16t
        0x29t
        0x25t
        0x26t
        0x12t
        0x1dt
        0x10t
        0x12t
        0x21t
        0x21t
        -0x52t
        -0x61t
        -0x5bt
        -0x5dt
        -0x63t
        -0x52t
        -0x53t
        -0x4ft
        -0x4et
    .end array-data
.end method

.method public static synthetic A03()[Lcom/facebook/ads/redexgen/X/NW;
    .locals 3

    .line 54344
    const/4 v0, 0x2

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/NW;

    sget-object v1, Lcom/facebook/ads/redexgen/X/NW;->A04:Lcom/facebook/ads/redexgen/X/NW;

    const/4 v0, 0x0

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/NW;->A05:Lcom/facebook/ads/redexgen/X/NW;

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v2
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/NW;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 54345
    const-class v0, Lcom/facebook/ads/redexgen/X/NW;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/NW;

    return-object v0
.end method

.method public static values()[Lcom/facebook/ads/redexgen/X/NW;
    .locals 1

    .line 54346
    sget-object v0, Lcom/facebook/ads/redexgen/X/NW;->A03:[Lcom/facebook/ads/redexgen/X/NW;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/NW;

    return-object v0
.end method
