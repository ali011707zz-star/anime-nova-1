.class public final Lcom/facebook/ads/redexgen/X/Hn;
.super Lcom/facebook/ads/redexgen/X/Wc;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/55;->A0Q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/55;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 799
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "MrnT4Eks85vPuqQr37JMtu4NfaYgfi6f"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "zfkVjNlCcNBydFIcz2mD"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Bee43nRREoDmuohWbk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "LYOPzNoZy5N5VpEZxT"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "78Vp0AX9Eb5UezJBTqKvLg5S66jER"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "qnB2IM"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "Ag3pKfa1yi0C6RoVnqVP"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "pygY9b2"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Hn;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Hn;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/55;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 39952
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Hn;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Wc;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hn;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v3, p0, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Hn;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1d

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Hn;->A02:[Ljava/lang/String;

    const-string v1, "zTo8qTO106BkbxhANT"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "z1bPe1QyN1GViRGZCE"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    sub-int/2addr v3, p2

    add-int/lit8 v0, v3, -0xf

    int-to-byte v0, v0

    aput-byte v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Hn;->A01:[B

    return-void

    :array_0
    .array-data 1
        -0x6ft
        -0x5ct
        -0x61t
        -0x60t
        -0x56t
        0x5bt
        -0x4et
        -0x64t
        -0x52t
        0x5bt
        -0x57t
        -0x60t
        -0x4ft
        -0x60t
        -0x53t
        0x5bt
        -0x55t
        -0x53t
        -0x60t
        -0x55t
        -0x64t
        -0x53t
        -0x60t
        -0x61t
    .end array-data
.end method


# virtual methods
.method public final A07()V
    .locals 5

    .line 39953
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Hn;->A00:Lcom/facebook/ads/redexgen/X/55;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/55;->A0z(Lcom/facebook/ads/redexgen/X/55;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39954
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Hn;->A00:Lcom/facebook/ads/redexgen/X/55;

    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hn;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Hn;->A02:[Ljava/lang/String;

    const-string v1, "EIUkH3ntVfUyNEjhHXbRpTHh"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/16 v1, 0x18

    const/16 v0, 0x2c

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Hn;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/facebook/ads/redexgen/X/55;->A0i(Lcom/facebook/ads/redexgen/X/55;Ljava/lang/String;)V

    .line 39955
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
