.class public abstract Lcom/facebook/ads/redexgen/X/8T;
.super Lcom/facebook/ads/redexgen/X/oy;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/lq;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/oy<",
        "Lcom/facebook/ads/redexgen/X/8S;",
        "Lcom/facebook/ads/redexgen/X/8P;",
        "Lcom/facebook/ads/redexgen/X/lj;",
        ">;",
        "Lcom/facebook/ads/redexgen/X/lq;"
    }
.end annotation


# static fields
.field public static A01:[B

.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 528
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "gN8"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "v0q6HziqC5r28rLi1ZsQmD2OK0fgspik"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "XftI4eRfVNg33Op0jQPz8O6PbCkMHbWE"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "SdzNGuU6dc81VqISrLBD"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "AmzsDcSyCxTNGO"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "BjhKb3Az99p878kvj1gxEmyEzdFIjRD"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "VkdZ1nUYKY17rCLbk1Npuh3A0WHSXOLE"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "WDjquUi0atGhsKhHWhKEDeyGOzHRt12i"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/8T;->A02:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/8T;->A0M()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 22987
    const/4 v0, 0x2

    new-array v1, v0, [Lcom/facebook/ads/redexgen/X/8S;

    new-array v0, v0, [Lcom/facebook/ads/redexgen/X/8P;

    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/oy;-><init>([Lcom/facebook/ads/redexgen/X/p0;[Lcom/facebook/ads/redexgen/X/oz;)V

    .line 22988
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/8T;->A00:Ljava/lang/String;

    .line 22989
    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/oy;->A0d(I)V

    .line 22990
    return-void
.end method

.method private final A0H()Lcom/facebook/ads/redexgen/X/1Y;
    .locals 1

    .line 22991
    new-instance v0, Lcom/facebook/ads/redexgen/X/1Y;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/1Y;-><init>(Lcom/facebook/ads/redexgen/X/8T;)V

    return-object v0
.end method

.method private final A0I(Lcom/facebook/ads/redexgen/X/8S;Lcom/facebook/ads/redexgen/X/8P;Z)Lcom/facebook/ads/redexgen/X/lj;
    .locals 7

    .line 22992
    :try_start_0
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/p0;->A02:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 22993
    .local v0, "inputData":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p0, v1, v0, p3}, Lcom/facebook/ads/redexgen/X/8T;->A0g([BIZ)Lcom/facebook/ads/redexgen/X/Jj;

    move-result-object v4

    .line 22994
    .local v6, "subtitle":Lcom/facebook/ads/redexgen/X/Jj;
    iget-wide v2, p1, Lcom/facebook/ads/redexgen/X/p0;->A01:J

    iget-wide v5, p1, Lcom/facebook/ads/redexgen/X/8S;->A00:J

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/ads/redexgen/X/8P;->A0C(JLcom/facebook/ads/redexgen/X/Jj;J)V

    .line 22995
    const/high16 v0, -0x80000000

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/5u;->A01(I)V

    .line 22996
    const/4 v0, 0x0

    return-object v0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/lj; {:try_start_0 .. :try_end_0} :catch_0

    .line 22997
    .end local v0    # "inputData":Ljava/nio/ByteBuffer;
    .end local v6    # "subtitle":Lcom/facebook/ads/redexgen/X/Jj;
    :catch_0
    move-exception v0

    .line 22998
    .local v0, "e":Lcom/facebook/ads/redexgen/X/lj;
    return-object v0
.end method

.method private final A0J(Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/lj;
    .locals 3

    .line 22999
    const/4 v2, 0x0

    const/16 v1, 0x17

    const/16 v0, 0x63

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/8T;->A0L(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/lj;

    invoke-direct {v0, v1, p1}, Lcom/facebook/ads/redexgen/X/lj;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private final A0K()Lcom/facebook/ads/redexgen/X/8S;
    .locals 1

    .line 23000
    new-instance v0, Lcom/facebook/ads/redexgen/X/8S;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/8S;-><init>()V

    return-object v0
.end method

.method public static A0L(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/8T;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    aget-byte v0, p0, p1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x64

    int-to-byte v3, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/8T;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/8T;->A02:[Ljava/lang/String;

    const-string v1, "7OO3CpMfw2stGNBOXFHDwltwdlKTQaUN"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "XdJDd6VP529P2X7c3MAKusUlyNrjc2WF"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    aput-byte v3, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A0M()V
    .locals 4

    const/16 v3, 0x17

    sget-object v1, Lcom/facebook/ads/redexgen/X/8T;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/8T;->A02:[Ljava/lang/String;

    const-string v1, "V56IsTeJwH5mFHCmn3IS5snx7jCRlGG"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "owU73l6HwKvTqc"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/8T;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x1ct
        0x35t
        0x2ct
        0x3ft
        0x37t
        0x2ct
        0x2at
        0x3bt
        0x2ct
        0x2bt
        -0x19t
        0x2bt
        0x2ct
        0x2at
        0x36t
        0x2bt
        0x2ct
        -0x19t
        0x2ct
        0x39t
        0x39t
        0x36t
        0x39t
    .end array-data
.end method


# virtual methods
.method public final bridge synthetic A0Y(Lcom/facebook/ads/redexgen/X/p0;Lcom/facebook/ads/redexgen/X/oz;Z)Lcom/facebook/ads/redexgen/X/61;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 23001
    check-cast p1, Lcom/facebook/ads/redexgen/X/8S;

    check-cast p2, Lcom/facebook/ads/redexgen/X/8P;

    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/8T;->A0I(Lcom/facebook/ads/redexgen/X/8S;Lcom/facebook/ads/redexgen/X/8P;Z)Lcom/facebook/ads/redexgen/X/lj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0Z(Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/61;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 23002
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/8T;->A0J(Ljava/lang/Throwable;)Lcom/facebook/ads/redexgen/X/lj;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0a()Lcom/facebook/ads/redexgen/X/p0;
    .locals 1

    .line 23003
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8T;->A0K()Lcom/facebook/ads/redexgen/X/8S;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic A0c()Lcom/facebook/ads/redexgen/X/oz;
    .locals 1

    .line 23004
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8T;->A0H()Lcom/facebook/ads/redexgen/X/1Y;

    move-result-object v0

    return-object v0
.end method

.method public abstract A0g([BIZ)Lcom/facebook/ads/redexgen/X/Jj;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/lj;
        }
    .end annotation
.end method

.method public final A0h(Lcom/facebook/ads/redexgen/X/8P;)V
    .locals 0

    .line 23005
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/oy;->A0f(Lcom/facebook/ads/redexgen/X/oz;)V

    .line 23006
    return-void
.end method

.method public final AJh(J)V
    .locals 0

    .line 23007
    return-void
.end method
