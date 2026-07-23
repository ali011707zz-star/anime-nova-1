.class public final Lcom/facebook/ads/redexgen/X/1V;
.super Lcom/facebook/ads/redexgen/X/8S;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/8M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CeaInputBuffer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/8S;",
        "Ljava/lang/Comparable<",
        "Lcom/facebook/ads/redexgen/X/1V;",
        ">;"
    }
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public A00:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 98
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "kvWdB3TE4F02CvBMsBFKzpbhVf73VbPo"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "pIhQPOOT2xsrqrTjtTEUrnlklrU2j4Xx"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "pdYckjhCIzgQgDgJpRux4fo9y3MK9tam"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "XLFgtw4chSUawlDhyOF7PI6ZgPIPNXPT"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "wXiI6RESjxFaJi9cRzlxvGX2h498oRyj"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Xh6QYYa7B1600WPBULoDPW4oSxfbsPz9"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "bCs754CcQZSDfR1NSOnMEHTumHpSYrD0"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "OFiOLoEO5ZOYdCRe7y5ePAMAMobk5MLR"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/1V;->A01:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 6149
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/8S;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/Jr;)V
    .locals 0

    .line 6150
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/1V;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/1V;)I
    .locals 9

    .line 6151
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5u;->A05()Z

    move-result v1

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/5u;->A05()Z

    move-result v0

    const/4 v8, 0x1

    if-eq v1, v0, :cond_1

    .line 6152
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/5u;->A05()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v8

    :cond_0
    const/4 v8, -0x1

    goto :goto_0

    .line 6153
    :cond_1
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/p0;->A01:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/p0;->A01:J

    sub-long/2addr v4, v0

    .line 6154
    .local v0, "delta":J
    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 6155
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/1V;->A00:J

    iget-wide v0, p1, Lcom/facebook/ads/redexgen/X/1V;->A00:J

    sub-long/2addr v4, v0

    .line 6156
    cmp-long v0, v4, v6

    if-nez v0, :cond_2

    .line 6157
    const/4 v0, 0x0

    return v0

    .line 6158
    :cond_2
    cmp-long v3, v4, v6

    sget-object v2, Lcom/facebook/ads/redexgen/X/1V;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/1V;->A01:[Ljava/lang/String;

    const-string v1, "UnaoajjPsJhIzAMYj8TXxoU3mdsqoDpP"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-lez v3, :cond_4

    :goto_1
    return v8

    :cond_4
    const/4 v8, -0x1

    goto :goto_1
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/1V;J)J
    .locals 0

    .line 6159
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/1V;->A00:J

    return-wide p1
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 6160
    check-cast p1, Lcom/facebook/ads/redexgen/X/1V;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/1V;->A00(Lcom/facebook/ads/redexgen/X/1V;)I

    move-result v0

    return v0
.end method
