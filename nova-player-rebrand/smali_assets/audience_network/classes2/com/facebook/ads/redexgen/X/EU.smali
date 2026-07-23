.class public final Lcom/facebook/ads/redexgen/X/EU;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/1a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AdaptationCheckpoint"
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final A00:J

.field public final A01:J


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 709
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "lLT4WSGDXAAEttN4WZpjnZW3EREZ5IUn"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "X1LJmLkuKByNLD5"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "9E9AvNKTbt"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "HDUBXdTF0"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "Y2br1ow9JJdQjV7"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Cljbn90LR6"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "vevW4XIw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "R43W1WP4nPn8Vokax5r9eZsQvu5hcN6d"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/EU;->A02:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 0

    .line 34789
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34790
    iput-wide p1, p0, Lcom/facebook/ads/redexgen/X/EU;->A01:J

    .line 34791
    iput-wide p3, p0, Lcom/facebook/ads/redexgen/X/EU;->A00:J

    .line 34792
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .line 34793
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 34794
    return v5

    .line 34795
    :cond_0
    instance-of v3, p1, Lcom/facebook/ads/redexgen/X/EU;

    const/4 v4, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/EU;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x15

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/EU;->A02:[Ljava/lang/String;

    const-string v1, "RWvSWN92NbOHtVZ"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "5AykDqMn7i1NCR6"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-nez v3, :cond_2

    .line 34796
    return v4

    .line 34797
    :cond_2
    check-cast p1, Lcom/facebook/ads/redexgen/X/EU;

    .line 34798
    .local v1, "that":Lcom/facebook/ads/redexgen/X/EU;
    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/EU;->A01:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/EU;->A01:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    iget-wide v3, p0, Lcom/facebook/ads/redexgen/X/EU;->A00:J

    iget-wide v1, p1, Lcom/facebook/ads/redexgen/X/EU;->A00:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_3

    :goto_0
    return v5

    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .line 34799
    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/EU;->A01:J

    long-to-int v0, v1

    mul-int/lit8 v3, v0, 0x1f

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/EU;->A00:J

    long-to-int v0, v1

    add-int/2addr v3, v0

    return v3
.end method
