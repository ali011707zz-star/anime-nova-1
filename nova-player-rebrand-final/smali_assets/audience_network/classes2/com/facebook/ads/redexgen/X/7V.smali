.class public final Lcom/facebook/ads/redexgen/X/7V;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7W;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PlaybackLatencyConfig"
.end annotation


# static fields
.field public static A04:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:I

.field public final synthetic A03:Lcom/facebook/ads/redexgen/X/7W;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 472
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "IlrXm3tezuWbVMaXPLi828ioISQJgCfS"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "NAwIzBHR00ZPv9WHAooSWGmMQnQsAYk8"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "eu5lMmt7ol9PqHL84pZymZquGRu6o"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "m2SAqTjU3gSqVMchVgPXeZMw5JHzzeRQ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "AbCmeSj5KlQ54JssPMwwYJBwucQ6C"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "RqAiTasO9D9HsUdBZKTQCzdghtQ9E0yV"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "WIBemWRSgRuyaEIJ1sL2dCgMu2IibJ9f"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "z026p7uIfXqhY1JlsQjMBKUP7isQ63Up"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/7V;->A04:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7W;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 21150
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7V;->A03:Lcom/facebook/ads/redexgen/X/7W;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21151
    iput p2, p0, Lcom/facebook/ads/redexgen/X/7V;->A00:I

    .line 21152
    iput p3, p0, Lcom/facebook/ads/redexgen/X/7V;->A01:I

    .line 21153
    iput p4, p0, Lcom/facebook/ads/redexgen/X/7V;->A02:I

    .line 21154
    return-void
.end method


# virtual methods
.method public final A00()I
    .locals 5

    .line 21155
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    .line 21156
    .local v0, "random":Ljava/util/Random;
    iget v0, p0, Lcom/facebook/ads/redexgen/X/7V;->A02:I

    invoke-virtual {v1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 21157
    iget v0, p0, Lcom/facebook/ads/redexgen/X/7V;->A01:I

    if-gtz v0, :cond_0

    .line 21158
    iget v0, p0, Lcom/facebook/ads/redexgen/X/7V;->A00:I

    return v0

    .line 21159
    :cond_0
    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v4

    iget v0, p0, Lcom/facebook/ads/redexgen/X/7V;->A01:I

    rem-int/2addr v4, v0

    .line 21160
    .local v1, "variation":I
    iget v3, p0, Lcom/facebook/ads/redexgen/X/7V;->A00:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/7V;->A04:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/7V;->A04:[Ljava/lang/String;

    const-string v1, "t99WXaELTOA6CPYhlrJz9JZjCbRHN"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "SwFbG7SpSQOHKIZQBIcFbwrWU2Enz"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    add-int/2addr v3, v4

    return v3

    .line 21161
    .end local v1    # "variation":I
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
