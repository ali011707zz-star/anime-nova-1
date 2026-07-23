.class public final Lcom/facebook/ads/redexgen/X/52;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public A00:I

.field public A01:I

.field public A02:[J

.field public A03:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13048
    .local p0, "this":Lcom/facebook/ads/redexgen/X/52;, "Lcom/facebook/ads/androidx/media3/common/util/TimedValueQueue<TV;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/52;-><init>(I)V

    .line 13049
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 13050
    .local p0, "this":Lcom/facebook/ads/redexgen/X/52;, "Lcom/facebook/ads/androidx/media3/common/util/TimedValueQueue<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13051
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/52;->A02:[J

    .line 13052
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/52;->A00(I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/52;->A03:[Ljava/lang/Object;

    .line 13053
    return-void
.end method

.method public static A00(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(I)[TV;"
        }
    .end annotation

    .line 13054
    new-array p0, p0, [Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized A01()V
    .locals 2

    .local p0, "this":Lcom/facebook/ads/redexgen/X/52;, "Lcom/facebook/ads/androidx/media3/common/util/TimedValueQueue<TV;>;"
    monitor-enter p0

    .line 13055
    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/facebook/ads/redexgen/X/52;->A00:I

    .line 13056
    iput v0, p0, Lcom/facebook/ads/redexgen/X/52;->A01:I

    .line 13057
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/52;->A03:[Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13058
    monitor-exit p0

    return-void

    .line 13059
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/52;, "Lcom/facebook/ads/androidx/media3/common/util/TimedValueQueue<TV;>;"
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
