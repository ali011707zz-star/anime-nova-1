.class public final Lcom/facebook/ads/redexgen/X/UZ;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/io/File;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1931
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "bU9TaOq2H1BCoTTudHgTa6noiTEuLI16"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "3dC6vQggwfY"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "sSGIgptGmRpdYm1DWaL7pn14ju5"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "MWUI4wrCJQVvfxcejCMbIiiXK3H"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "jomkRAByJcuN5WcossiIAnU6"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "EV4d58k22VMnbcsySNbmwKm2xbXDyfIQ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "0y1Y4yK8RTgYo"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/UZ;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/UZ;->A02()V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 67802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67803
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UZ;->A00:Ljava/io/File;

    .line 67804
    return-void
.end method

.method public static A00(Ljava/lang/String;Landroid/content/Context;)Lcom/facebook/ads/redexgen/X/UZ;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67805
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    .line 67806
    .local v0, "filesDir":Ljava/io/File;
    const/16 v2, 0x40

    const/16 v1, 0x9

    const/16 v0, 0x60

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UZ;->A01(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67807
    .local v1, "fbsdklogDir":Ljava/io/File;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/UZ;->A03(Ljava/io/File;)V

    .line 67808
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67809
    .local v2, "keyDir":Ljava/io/File;
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/UZ;->A03(Ljava/io/File;)V

    .line 67810
    new-instance v0, Lcom/facebook/ads/redexgen/X/UZ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/UZ;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/UZ;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    const/4 p0, 0x0

    :goto_0
    array-length p1, v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/UZ;->A02:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/UZ;->A02:[Ljava/lang/String;

    const-string v1, "66mt0TcJLXpax"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "NTsH2gO48Ko"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-ge p0, p1, :cond_0

    aget-byte v0, v3, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x7a

    int-to-byte v0, v0

    aput-byte v0, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A02()V
    .locals 4

    const/16 v0, 0x49

    new-array v3, v0, [B

    sget-object v2, Lcom/facebook/ads/redexgen/X/UZ;->A02:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/UZ;->A02:[Ljava/lang/String;

    const-string v1, ""

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "lx0xFtkenAwJEtKSHitpjLSh"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/UZ;->A01:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0x7t
        0x25t
        0x2at
        0x2at
        0x2bt
        0x30t
        0x64t
        0x21t
        0x2at
        0x37t
        0x31t
        0x36t
        0x21t
        0x64t
        0x63t
        0x61t
        0x37t
        0x63t
        0x64t
        0x2dt
        0x37t
        0x64t
        0x25t
        0x64t
        0x20t
        0x2dt
        0x36t
        0x21t
        0x27t
        0x30t
        0x2bt
        0x36t
        0x3dt
        0x7t
        0x20t
        0x28t
        0x2dt
        0x24t
        0x25t
        0x61t
        0x35t
        0x2et
        0x61t
        0x22t
        0x33t
        0x24t
        0x20t
        0x35t
        0x24t
        0x61t
        0x25t
        0x28t
        0x33t
        0x24t
        0x22t
        0x35t
        0x2et
        0x33t
        0x38t
        0x61t
        0x66t
        0x64t
        0x32t
        0x66t
        0x7ct
        0x78t
        0x69t
        0x7et
        0x71t
        0x45t
        0x76t
        0x75t
        0x7dt
    .end array-data
.end method

.method public static A03(Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67811
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 67812
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67813
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67814
    return-void

    .line 67815
    :cond_1
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 67816
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v0, v3, v2

    .line 67817
    const/4 v2, 0x0

    const/16 v1, 0x21

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UZ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ua;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Ua;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67818
    :cond_2
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 67819
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v0, v3, v2

    .line 67820
    const/16 v2, 0x21

    const/16 v1, 0x1f

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/UZ;->A01(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ua;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Ua;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final A04(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/UZ;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67821
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UZ;->A00:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 67822
    .local v0, "dir":Ljava/io/File;
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/UZ;->A03(Ljava/io/File;)V

    .line 67823
    new-instance v0, Lcom/facebook/ads/redexgen/X/UZ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/UZ;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public final A05()Ljava/io/File;
    .locals 1

    .line 67824
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UZ;->A00:Ljava/io/File;

    return-object v0
.end method
