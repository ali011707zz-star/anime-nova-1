.class public Lcom/facebook/ads/redexgen/X/p5;
.super Lcom/facebook/ads/redexgen/X/5b;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/AJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HttpDataSourceException"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/androidx/media3/datasource/HttpDataSource$HttpDataSourceException$Type;
    }
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final A00:I

.field public final A01:Lcom/facebook/ads/redexgen/X/5i;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/p5;->A06()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/5i;II)V
    .locals 1

    .line 103907
    invoke-static {p2, p3}, Lcom/facebook/ads/redexgen/X/p5;->A03(II)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/5b;-><init>(I)V

    .line 103908
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/p5;->A01:Lcom/facebook/ads/redexgen/X/5i;

    .line 103909
    iput p3, p0, Lcom/facebook/ads/redexgen/X/p5;->A00:I

    .line 103910
    return-void
.end method

.method public constructor <init>(Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/5i;II)V
    .locals 1

    .line 103911
    invoke-static {p3, p4}, Lcom/facebook/ads/redexgen/X/p5;->A03(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/5b;-><init>(Ljava/lang/Throwable;I)V

    .line 103912
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/p5;->A01:Lcom/facebook/ads/redexgen/X/5i;

    .line 103913
    iput p4, p0, Lcom/facebook/ads/redexgen/X/p5;->A00:I

    .line 103914
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/5i;II)V
    .locals 1

    .line 103915
    invoke-static {p3, p4}, Lcom/facebook/ads/redexgen/X/p5;->A03(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/5b;-><init>(Ljava/lang/String;I)V

    .line 103916
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/p5;->A01:Lcom/facebook/ads/redexgen/X/5i;

    .line 103917
    iput p4, p0, Lcom/facebook/ads/redexgen/X/p5;->A00:I

    .line 103918
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/5i;II)V
    .locals 1

    .line 103919
    invoke-static {p4, p5}, Lcom/facebook/ads/redexgen/X/p5;->A03(II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/ads/redexgen/X/5b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;I)V

    .line 103920
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/p5;->A01:Lcom/facebook/ads/redexgen/X/5i;

    .line 103921
    iput p5, p0, Lcom/facebook/ads/redexgen/X/p5;->A00:I

    .line 103922
    return-void
.end method

.method public static A03(II)I
    .locals 1

    .line 103923
    const/16 v0, 0x7d0

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 103924
    const/16 p0, 0x7d1

    .line 103925
    :cond_0
    return p0
.end method

.method public static A04(Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/5i;I)Lcom/facebook/ads/redexgen/X/p5;
    .locals 4

    .line 103926
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 103927
    .local v0, "message":Ljava/lang/String;
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_1

    .line 103928
    const/16 v1, 0x7d2

    .line 103929
    .local v1, "errorCode":I
    .restart local v1    # "errorCode":I
    :goto_0
    const/16 v0, 0x7d7

    if-ne v1, v0, :cond_0

    .line 103930
    new-instance v0, Lcom/facebook/ads/redexgen/X/AM;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/AM;-><init>(Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/5i;)V

    .line 103931
    :goto_1
    return-object v0

    .line 103932
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/p5;

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/facebook/ads/redexgen/X/p5;-><init>(Ljava/io/IOException;Lcom/facebook/ads/redexgen/X/5i;II)V

    goto :goto_1

    .line 103933
    .end local v1    # "errorCode":I
    :cond_1
    instance-of v0, p0, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_2

    .line 103934
    const/16 v1, 0x3ec

    .restart local v1    # "errorCode":I
    goto :goto_0

    .line 103935
    .end local v1    # "errorCode":I
    :cond_2
    if-eqz v1, :cond_3

    .line 103936
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/k7;->A01(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x1a

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/p5;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 103937
    const/16 v1, 0x7d7

    .restart local v1    # "errorCode":I
    goto :goto_0

    .line 103938
    .end local v1    # "errorCode":I
    :cond_3
    const/16 v1, 0x7d1

    goto :goto_0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/p5;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x38

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A06()V
    .locals 1

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/p5;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x27t
        -0x1et
        -0x25t
        -0x29t
        -0x18t
        -0x16t
        -0x25t
        -0x12t
        -0x16t
        -0x5ct
        -0x60t
        -0x1ct
        -0x1bt
        -0x16t
        -0x6at
        -0x1at
        -0x25t
        -0x18t
        -0x1dt
        -0x21t
        -0x16t
        -0x16t
        -0x25t
        -0x26t
        -0x5ct
        -0x60t
    .end array-data
.end method
