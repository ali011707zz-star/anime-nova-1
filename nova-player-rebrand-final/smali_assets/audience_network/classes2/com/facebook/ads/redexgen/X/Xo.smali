.class public abstract Lcom/facebook/ads/redexgen/X/Xo;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 2398
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "tfO9EFprOidg15dbWOFNM3pJ9DH12nbd"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "iQi3WSSmt7paFVU78YsoSc5vRnrGV8FY"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "eVwJkLn66NX0DyzCMNkg9H8sjiBrfui3"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "LdqoMHLm0q63TozEkFqOQv3OaH4JH8Wu"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "cJBmiPiaGEEsJOt"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "9KYT0ysg0qk30iHsbz0zWhVwZhq8iyG9"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "m7p"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Jc"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Xo;->A00:[Ljava/lang/String;

    return-void
.end method

.method public static A00([B)Ljava/io/Serializable;
    .locals 5

    .line 73060
    if-nez p0, :cond_0

    .line 73061
    const/4 v0, 0x0

    return-object v0

    .line 73062
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 73063
    .local v0, "parcel":Landroid/os/Parcel;
    array-length v0, p0

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4, v0}, Landroid/os/Parcel;->unmarshall([BII)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Xo;->A00:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    .line 73064
    sget-object v2, Lcom/facebook/ads/redexgen/X/Xo;->A00:[Ljava/lang/String;

    const-string v1, "ayJKSMoIzNcUU8Q19fzYI1UxLR6MMgkq"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "KX8CQKcPRjr3ALAXmnNmxPsf5ZezVoBn"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 73065
    invoke-virtual {v3}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    .line 73066
    .local v1, "result":Ljava/io/Serializable;
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 73067
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A01(Ljava/io/Serializable;)[B
    .locals 2

    .line 73068
    if-nez p0, :cond_0

    .line 73069
    const/4 v0, 0x0

    return-object v0

    .line 73070
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 73071
    .local v0, "parcel":Landroid/os/Parcel;
    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 73072
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 73073
    .local v1, "result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 73074
    return-object v0
.end method
