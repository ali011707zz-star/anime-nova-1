.class public final Lcom/facebook/ads/redexgen/X/oM;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/8z;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/9G;,
        Lcom/facebook/ads/redexgen/X/9F;,
        Lcom/facebook/ads/redexgen/X/oP;,
        Lcom/facebook/ads/redexgen/X/9J;,
        Lcom/facebook/ads/redexgen/X/9M;,
        Lcom/facebook/ads/redexgen/X/9H;,
        Lcom/facebook/ads/redexgen/X/9D;,
        Lcom/facebook/ads/redexgen/X/9E;,
        Lcom/facebook/ads/redexgen/X/9C;,
        Lcom/facebook/ads/redexgen/X/9P;,
        Lcom/facebook/ads/androidx/media3/exoplayer/audio/DefaultAudioSink$OutputMode;,
        Lcom/facebook/ads/androidx/media3/exoplayer/audio/DefaultAudioSink$OffloadMode;,
        Lcom/facebook/ads/redexgen/X/A4;,
        Lcom/facebook/ads/androidx/media3/exoplayer/audio/DefaultAudioSink$AudioProcessorChain;,
        Lcom/facebook/ads/redexgen/X/9I;
    }
.end annotation


# static fields
.field public static A0v:Z

.field public static A0w:I

.field public static A0x:Ljava/util/concurrent/ExecutorService;

.field public static A0y:[B

.field public static A0z:[Ljava/lang/String;

.field public static final A10:Ljava/lang/Object;

.field public static final A11:Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "NEW_CLASS_ARG"
        }
        value = "D23918943: Monitor the audio track usage"
    .end annotation
.end field


# instance fields
.field public A00:F

.field public A01:I

.field public A02:I

.field public A03:I

.field public A04:I

.field public A05:I

.field public A06:I

.field public A07:J

.field public A08:J

.field public A09:J

.field public A0A:J

.field public A0B:J

.field public A0C:J

.field public A0D:Landroid/media/AudioTrack;

.field public A0E:Lcom/facebook/ads/redexgen/X/qQ;

.field public A0F:Lcom/facebook/ads/redexgen/X/21;

.field public A0G:Lcom/facebook/ads/redexgen/X/px;

.field public A0H:Lcom/facebook/ads/redexgen/X/8O;

.field public A0I:Lcom/facebook/ads/redexgen/X/8v;

.field public A0J:Lcom/facebook/ads/redexgen/X/9E;

.field public A0K:Lcom/facebook/ads/redexgen/X/9H;

.field public A0L:Lcom/facebook/ads/redexgen/X/9H;

.field public A0M:Lcom/facebook/ads/redexgen/X/9J;

.field public A0N:Lcom/facebook/ads/redexgen/X/9J;

.field public A0O:Lcom/facebook/ads/redexgen/X/9P;

.field public A0P:Ljava/nio/ByteBuffer;

.field public A0Q:Ljava/nio/ByteBuffer;

.field public A0R:Ljava/nio/ByteBuffer;

.field public A0S:Z
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "NEW_CLASS_ARG"
        }
        value = "D45157249: Retry Audio Track Init failure with less Audio track allocation sizes"
    .end annotation
.end field

.field public A0T:Z

.field public A0U:Z

.field public A0V:Z

.field public A0W:Z

.field public A0X:Z

.field public A0Y:Z

.field public A0Z:Z

.field public A0a:Z

.field public A0b:Z

.field public A0c:[B

.field public A0d:[Lcom/facebook/ads/redexgen/X/3k;

.field public A0e:[Ljava/nio/ByteBuffer;

.field public final A0f:I

.field public final A0g:Lcom/facebook/ads/redexgen/X/3l;

.field public final A0h:Lcom/facebook/ads/redexgen/X/48;

.field public final A0i:Lcom/facebook/ads/redexgen/X/6W;

.field public final A0j:Lcom/facebook/ads/redexgen/X/8R;

.field public final A0k:Lcom/facebook/ads/redexgen/X/95;

.field public final A0l:Lcom/facebook/ads/redexgen/X/A7;

.field public final A0m:Lcom/facebook/ads/redexgen/X/9F;

.field public final A0n:Lcom/facebook/ads/redexgen/X/9M;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9M<",
            "Lcom/facebook/ads/redexgen/X/8t;",
            ">;"
        }
    .end annotation
.end field

.field public final A0o:Lcom/facebook/ads/redexgen/X/9M;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9M<",
            "Lcom/facebook/ads/redexgen/X/8y;",
            ">;"
        }
    .end annotation
.end field

.field public final A0p:Lcom/facebook/ads/redexgen/X/9x;

.field public final A0q:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/facebook/ads/redexgen/X/9J;",
            ">;"
        }
    .end annotation
.end field

.field public final A0r:Z

.field public final A0s:Z

.field public final A0t:[Lcom/facebook/ads/redexgen/X/3k;

.field public final A0u:[Lcom/facebook/ads/redexgen/X/3k;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3326
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "a2KSouRkY2EeYPYlRPuQP1BMARpp6f9O"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "Gy"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Dq9VRycV95bIzONst7U9W8VcH5OAT2ac"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "T381mgHUGlQbTRbVURm4ZuRF6EOi2D8f"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "KkGB0jhfpK5IC"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "ogTnlK5ViGnrQ4kTUDUA61bIZynBq2mv"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "CJ3ZuNqxaIjwSiQAD7ytgom2H57haWJk"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "spWmv2H5WGO5MG6CASCqBbohd0yqIF8X"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    invoke-static {}, Lcom/facebook/ads/redexgen/X/oM;->A0T()V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/facebook/ads/redexgen/X/oM;->A0v:Z

    .line 3327
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/oM;->A10:Ljava/lang/Object;

    .line 3328
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/oM;->A11:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/8R;[Lcom/facebook/ads/redexgen/X/3k;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102286
    new-instance v1, Lcom/facebook/ads/redexgen/X/9G;

    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/9G;-><init>()V

    sget-object v0, Lcom/facebook/ads/redexgen/X/8R;->A04:Lcom/facebook/ads/redexgen/X/8R;

    .line 102287
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/ka;->A00(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/8R;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9G;->A06(Lcom/facebook/ads/redexgen/X/8R;)Lcom/facebook/ads/redexgen/X/9G;

    move-result-object v0

    .line 102288
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/9G;->A07([Lcom/facebook/ads/redexgen/X/3k;)Lcom/facebook/ads/redexgen/X/9G;

    move-result-object v0

    .line 102289
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/oM;-><init>(Lcom/facebook/ads/redexgen/X/9G;)V

    .line 102290
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9G;)V
    .locals 11
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "#1.audioProcessorChain"
        }
    .end annotation

    .line 102291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102292
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/9G;->A02(Lcom/facebook/ads/redexgen/X/9G;)Lcom/facebook/ads/redexgen/X/8R;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0j:Lcom/facebook/ads/redexgen/X/8R;

    .line 102293
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/9G;->A01(Lcom/facebook/ads/redexgen/X/9G;)Lcom/facebook/ads/redexgen/X/3l;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0g:Lcom/facebook/ads/redexgen/X/3l;

    .line 102294
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x15

    const/4 v5, 0x1

    const/4 v2, 0x0

    if-lt v1, v0, :cond_2

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/9G;->A03(Lcom/facebook/ads/redexgen/X/9G;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0s:Z

    .line 102295
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x17

    if-lt v1, v0, :cond_1

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/9G;->A04(Lcom/facebook/ads/redexgen/X/9G;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0r:Z

    .line 102296
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x1d

    if-lt v1, v0, :cond_0

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/9G;->A00(Lcom/facebook/ads/redexgen/X/9G;)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0f:I

    .line 102297
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/9G;->A00:Lcom/facebook/ads/redexgen/X/9F;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0m:Lcom/facebook/ads/redexgen/X/9F;

    .line 102298
    sget-object v1, Lcom/facebook/ads/redexgen/X/45;->A00:Lcom/facebook/ads/redexgen/X/45;

    new-instance v0, Lcom/facebook/ads/redexgen/X/48;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/48;-><init>(Lcom/facebook/ads/redexgen/X/45;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0h:Lcom/facebook/ads/redexgen/X/48;

    .line 102299
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0h:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A04()Z

    .line 102300
    const/4 v0, 0x0

    new-instance v1, Lcom/facebook/ads/redexgen/X/oP;

    invoke-direct {v1, p0, v0}, Lcom/facebook/ads/redexgen/X/oP;-><init>(Lcom/facebook/ads/redexgen/X/oM;Lcom/facebook/ads/redexgen/X/9B;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/95;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/95;-><init>(Lcom/facebook/ads/redexgen/X/93;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0k:Lcom/facebook/ads/redexgen/X/95;

    .line 102301
    new-instance v0, Lcom/facebook/ads/redexgen/X/A7;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/A7;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0l:Lcom/facebook/ads/redexgen/X/A7;

    .line 102302
    new-instance v0, Lcom/facebook/ads/redexgen/X/9x;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9x;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0p:Lcom/facebook/ads/redexgen/X/9x;

    .line 102303
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 102304
    .local v0, "toIntPcmAudioProcessors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/androidx/media3/common/audio/AudioProcessor;>;"
    const/4 v0, 0x3

    new-array v3, v0, [Lcom/facebook/ads/redexgen/X/oQ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/9z;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/9z;-><init>()V

    aput-object v0, v3, v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0l:Lcom/facebook/ads/redexgen/X/A7;

    aput-object v0, v3, v5

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0p:Lcom/facebook/ads/redexgen/X/9x;

    aput-object v0, v3, v1

    invoke-static {v4, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 102305
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0g:Lcom/facebook/ads/redexgen/X/3l;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3l;->A6z()[Lcom/facebook/ads/redexgen/X/3k;

    move-result-object v0

    invoke-static {v4, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 102306
    new-array v0, v2, [Lcom/facebook/ads/redexgen/X/3k;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/3k;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0u:[Lcom/facebook/ads/redexgen/X/3k;

    .line 102307
    new-array v1, v5, [Lcom/facebook/ads/redexgen/X/3k;

    new-instance v0, Lcom/facebook/ads/redexgen/X/A0;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/A0;-><init>()V

    aput-object v0, v1, v2

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/oM;->A0t:[Lcom/facebook/ads/redexgen/X/3k;

    .line 102308
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A00:F

    .line 102309
    sget-object v0, Lcom/facebook/ads/redexgen/X/qQ;->A07:Lcom/facebook/ads/redexgen/X/qQ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0E:Lcom/facebook/ads/redexgen/X/qQ;

    .line 102310
    iput v2, p0, Lcom/facebook/ads/redexgen/X/oM;->A01:I

    .line 102311
    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/21;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/21;-><init>(IF)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0F:Lcom/facebook/ads/redexgen/X/21;

    .line 102312
    new-instance v3, Lcom/facebook/ads/redexgen/X/9J;

    sget-object v4, Lcom/facebook/ads/redexgen/X/px;->A06:Lcom/facebook/ads/redexgen/X/px;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/9J;-><init>(Lcom/facebook/ads/redexgen/X/px;ZJJLcom/facebook/ads/redexgen/X/9B;)V

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/oM;->A0N:Lcom/facebook/ads/redexgen/X/9J;

    .line 102313
    sget-object v0, Lcom/facebook/ads/redexgen/X/px;->A06:Lcom/facebook/ads/redexgen/X/px;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0G:Lcom/facebook/ads/redexgen/X/px;

    .line 102314
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A03:I

    .line 102315
    new-array v0, v2, [Lcom/facebook/ads/redexgen/X/3k;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0d:[Lcom/facebook/ads/redexgen/X/3k;

    .line 102316
    new-array v0, v2, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0e:[Ljava/nio/ByteBuffer;

    .line 102317
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0q:Ljava/util/ArrayDeque;

    .line 102318
    const-wide/16 v1, 0x64

    new-instance v0, Lcom/facebook/ads/redexgen/X/9M;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/9M;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0n:Lcom/facebook/ads/redexgen/X/9M;

    .line 102319
    new-instance v0, Lcom/facebook/ads/redexgen/X/9M;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/9M;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0o:Lcom/facebook/ads/redexgen/X/9M;

    .line 102320
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0i:Lcom/facebook/ads/redexgen/X/6W;

    .line 102321
    return-void

    .line 102322
    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_2

    .line 102323
    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_1

    .line 102324
    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method private A00()I
    .locals 3
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "MERGED"
        }
        value = "D58560720: customized audio track retry logic. Feature is available upstream already"
    .end annotation

    .line 102325
    sget-object v0, Lcom/facebook/ads/redexgen/X/jX;->A1m:Lcom/facebook/ads/redexgen/X/jX;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ja;->A03(Lcom/facebook/ads/redexgen/X/jX;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102326
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/9H;->A06:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/9H;->A02:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9H;->A03:I

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oM;->A01(III)I

    move-result v0

    return v0

    .line 102327
    :cond_0
    const v0, 0xf4240

    return v0
.end method

.method public static A01(III)I
    .locals 0

    .line 102328
    invoke-static {p0, p1, p2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result p1

    .line 102329
    .local p0, "minBufferSize":I
    const/4 p0, -0x2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    :goto_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 102330
    return p1

    .line 102331
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static A02(ILjava/nio/ByteBuffer;)I
    .locals 4

    .line 102332
    const/16 v0, 0x400

    const/4 v1, -0x1

    packed-switch p0, :pswitch_data_0

    .line 102333
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xf4

    const/16 v1, 0x1b

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oM;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102334
    :pswitch_1
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/HT;->A00(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    .line 102335
    :pswitch_2
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Gu;->A01(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    .line 102336
    :pswitch_3
    return v0

    .line 102337
    :pswitch_4
    const/16 v0, 0x200

    return v0

    .line 102338
    :pswitch_5
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Gr;->A02(Ljava/nio/ByteBuffer;)I

    move-result v0

    .line 102339
    .local v0, "syncframeOffset":I
    if-ne v0, v1, :cond_0

    .line 102340
    const/4 v0, 0x0

    .line 102341
    :goto_0
    return v0

    .line 102342
    :cond_0
    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/Gr;->A04(Ljava/nio/ByteBuffer;I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x10

    goto :goto_0

    .line 102343
    .end local v0    # "syncframeOffset":I
    :pswitch_6
    const/16 v0, 0x800

    return v0

    .line 102344
    :pswitch_7
    return v0

    .line 102345
    :pswitch_8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0F(Ljava/nio/ByteBuffer;I)I

    move-result v0

    .line 102346
    .local v0, "headerDataInBigEndian":I
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/HO;->A01(I)I

    move-result v0

    .line 102347
    .local v2, "frameCount":I
    if-eq v0, v1, :cond_1

    .line 102348
    return v0

    .line 102349
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 102350
    .end local v0    # "headerDataInBigEndian":I
    .end local v2    # "frameCount":I
    :pswitch_9
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/H7;->A00(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    .line 102351
    :pswitch_a
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Gr;->A03(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_a
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private A03(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I
    .locals 7

    .line 102352
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x1f

    if-lt v1, v0, :cond_0

    .line 102353
    invoke-static {p1, p2}, Landroid/media/AudioManager;->getPlaybackOffloadSupport(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    move-result v0

    return v0

    .line 102354
    :cond_0
    invoke-static {p1, p2}, Landroid/media/AudioManager;->isOffloadedPlaybackSupported(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 102355
    const/4 v0, 0x0

    return v0

    .line 102356
    :cond_1
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x1e

    if-ne v1, v0, :cond_4

    sget-object v6, Lcom/facebook/ads/redexgen/X/5C;->A06:Ljava/lang/String;

    const/16 v5, 0xad

    const/4 v4, 0x5

    const/16 v3, 0x49

    sget-object v2, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const-string v1, "3tkRuQxdBcZlCTwsgu7cjpWlPYr81dQa"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v5, v4, v3}, Lcom/facebook/ads/redexgen/X/oM;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 102357
    const/4 v3, 0x2

    sget-object v1, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_3

    return v3

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const-string v1, "7yaDe65lYY86qlvGhmsANLPH6jvNYU2p"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return v3

    .line 102358
    :cond_4
    const/4 v0, 0x1

    return v0
.end method

.method public static A04(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 1

    .line 102359
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    return v0
.end method

.method private A05(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I
    .locals 11

    .line 102360
    move-wide v9, p4

    sget v3, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v2, 0x1a

    const-wide/16 v0, 0x3e8

    move v7, p3

    move-object v6, p2

    move-object v5, p1

    if-lt v3, v2, :cond_0

    .line 102361
    const/4 v8, 0x1

    mul-long/2addr v9, v0

    invoke-virtual/range {v5 .. v10}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;IIJ)I

    move-result v0

    return v0

    .line 102362
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/oM;->A0P:Ljava/nio/ByteBuffer;

    if-nez v2, :cond_1

    .line 102363
    const/16 v2, 0x10

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/ads/redexgen/X/oM;->A0P:Ljava/nio/ByteBuffer;

    .line 102364
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/oM;->A0P:Ljava/nio/ByteBuffer;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 102365
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/oM;->A0P:Ljava/nio/ByteBuffer;

    const v2, 0x55550001

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 102366
    :cond_1
    iget v2, p0, Lcom/facebook/ads/redexgen/X/oM;->A02:I

    const/4 v3, 0x0

    if-nez v2, :cond_2

    .line 102367
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/oM;->A0P:Ljava/nio/ByteBuffer;

    const/4 v2, 0x4

    invoke-virtual {v4, v2, v7}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 102368
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/oM;->A0P:Ljava/nio/ByteBuffer;

    const/16 v2, 0x8

    mul-long/2addr v0, v9

    invoke-virtual {v4, v2, v0, v1}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 102369
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0P:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 102370
    iput v7, p0, Lcom/facebook/ads/redexgen/X/oM;->A02:I

    .line 102371
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0P:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 102372
    .local v0, "avSyncHeaderBytesRemaining":I
    if-lez v2, :cond_4

    .line 102373
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oM;->A0P:Ljava/nio/ByteBuffer;

    .line 102374
    const/4 v0, 0x1

    invoke-virtual {v5, v1, v2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v0

    .line 102375
    .local v2, "result":I
    if-gez v0, :cond_3

    .line 102376
    iput v3, p0, Lcom/facebook/ads/redexgen/X/oM;->A02:I

    .line 102377
    return v0

    .line 102378
    :cond_3
    if-ge v0, v2, :cond_4

    .line 102379
    return v3

    .line 102380
    .end local v2    # "result":I
    :cond_4
    invoke-static {v5, v6, v7}, Lcom/facebook/ads/redexgen/X/oM;->A04(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v4

    .line 102381
    .restart local v2    # "result":I
    if-gez v4, :cond_5

    .line 102382
    iput v3, p0, Lcom/facebook/ads/redexgen/X/oM;->A02:I

    .line 102383
    return v4

    .line 102384
    :cond_5
    iget v3, p0, Lcom/facebook/ads/redexgen/X/oM;->A02:I

    sub-int/2addr v3, v4

    sget-object v2, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const-string v1, "dZEIQVBMkpJ01dOsE3P3AYpi9pP3UgAn"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iput v3, p0, Lcom/facebook/ads/redexgen/X/oM;->A02:I

    .line 102385
    return v4

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A06()J
    .locals 5

    .line 102386
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9H;->A04:I

    if-nez v0, :cond_0

    .line 102387
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/oM;->A0A:J

    sget-object v1, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 102388
    :cond_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/oM;->A09:J

    goto :goto_0

    .line 102389
    :cond_1
    sget-object v4, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const-string v1, "fKroUyDCoriQZ27MdWvBeynNHxXh31S0"

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const-string v1, "V2Tsqcz9Ivj1DWTn2T33JaE9HhmQCs1A"

    const/4 v0, 0x6

    aput-object v1, v4, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9H;->A01:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    .line 102390
    :goto_0
    return-wide v2
.end method

.method private A07()J
    .locals 4

    .line 102391
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9H;->A04:I

    if-nez v0, :cond_0

    .line 102392
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/oM;->A0C:J

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9H;->A05:I

    int-to-long v0, v0

    div-long/2addr v2, v0

    .line 102393
    :goto_0
    return-wide v2

    .line 102394
    :cond_0
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/oM;->A0B:J

    goto :goto_0
.end method

.method private A08(J)J
    .locals 5

    .line 102395
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0q:Ljava/util/ArrayDeque;

    .line 102396
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9J;

    iget-wide v1, v0, Lcom/facebook/ads/redexgen/X/9J;->A00:J

    cmp-long v0, p1, v1

    if-ltz v0, :cond_1

    .line 102397
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/9J;

    sget-object v2, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const-string v1, "uS5QwbhdMNBXkjn1i9eeeV7Jy2FKd79B"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/oM;->A0N:Lcom/facebook/ads/redexgen/X/9J;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 102398
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0N:Lcom/facebook/ads/redexgen/X/9J;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/9J;->A00:J

    sub-long v1, p1, v3

    .line 102399
    .local v0, "playoutDurationSinceLastCheckpointUs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0N:Lcom/facebook/ads/redexgen/X/9J;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/9J;->A02:Lcom/facebook/ads/redexgen/X/px;

    sget-object v0, Lcom/facebook/ads/redexgen/X/px;->A06:Lcom/facebook/ads/redexgen/X/px;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/px;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102400
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0N:Lcom/facebook/ads/redexgen/X/9J;

    iget-wide v3, v0, Lcom/facebook/ads/redexgen/X/9J;->A01:J

    add-long/2addr v3, v1

    return-wide v3

    .line 102401
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102402
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0g:Lcom/facebook/ads/redexgen/X/3l;

    .line 102403
    invoke-interface {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/3l;->A8U(J)J

    move-result-wide v2

    .line 102404
    .local v2, "mediaDurationSinceLastCheckpointUs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0N:Lcom/facebook/ads/redexgen/X/9J;

    iget-wide v0, v0, Lcom/facebook/ads/redexgen/X/9J;->A01:J

    add-long/2addr v0, v2

    return-wide v0

    .line 102405
    .end local v2    # "mediaDurationSinceLastCheckpointUs":J
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0q:Ljava/util/ArrayDeque;

    .line 102406
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/9J;

    .line 102407
    .local v2, "nextMediaPositionParameters":Lcom/facebook/ads/redexgen/X/9J;
    iget-wide v1, v4, Lcom/facebook/ads/redexgen/X/9J;->A00:J

    sub-long/2addr v1, p1

    .line 102408
    .local v3, "playoutDurationUntilNextCheckpointUs":J
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0N:Lcom/facebook/ads/redexgen/X/9J;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9J;->A02:Lcom/facebook/ads/redexgen/X/px;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/px;->A01:F

    .line 102409
    invoke-static {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/5C;->A0Q(JF)J

    move-result-wide v2

    .line 102410
    .local p0, "mediaDurationUntilNextCheckpointUs":J
    iget-wide v0, v4, Lcom/facebook/ads/redexgen/X/9J;->A01:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method private A09(J)J
    .locals 3

    .line 102411
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0g:Lcom/facebook/ads/redexgen/X/3l;

    .line 102412
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3l;->A98()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/9H;->A08(J)J

    move-result-wide v0

    add-long/2addr v0, p1

    .line 102413
    return-wide v0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/oM;)J
    .locals 1

    .line 102414
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A06()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/oM;)J
    .locals 1

    .line 102415
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A07()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/oM;)J
    .locals 1

    .line 102416
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A07:J

    return-wide v0
.end method

.method public static A0D(III)Landroid/media/AudioFormat;
    .locals 1

    .line 102417
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 102418
    invoke-virtual {v0, p0}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 102419
    invoke-virtual {v0, p1}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 102420
    invoke-virtual {v0, p2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 102421
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    .line 102422
    return-object v0
.end method

.method public static synthetic A0E(III)Landroid/media/AudioFormat;
    .locals 0

    .line 102423
    invoke-static {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/oM;->A0D(III)Landroid/media/AudioFormat;

    move-result-object p0

    return-object p0
.end method

.method private A0F()Landroid/media/AudioTrack;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/8t;
        }
    .end annotation

    .line 102424
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9H;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/oM;->A0G(Lcom/facebook/ads/redexgen/X/9H;)Landroid/media/AudioTrack;

    move-result-object v0

    return-object v0
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/8t; {:try_start_0 .. :try_end_0} :catch_0

    .line 102425
    :catch_0
    move-exception v2

    .line 102426
    .local v0, "initialFailure":Lcom/facebook/ads/redexgen/X/8t;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A00()I

    move-result v1

    .line 102427
    .local v1, "retryBufferSize":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9H;->A00:I

    if-le v0, v1, :cond_0

    .line 102428
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/9H;->A0C(I)Lcom/facebook/ads/redexgen/X/9H;

    move-result-object v1

    .line 102429
    .local v2, "retryConfiguration":Lcom/facebook/ads/redexgen/X/9H;
    :try_start_1
    invoke-direct {p0, v1}, Lcom/facebook/ads/redexgen/X/oM;->A0G(Lcom/facebook/ads/redexgen/X/9H;)Landroid/media/AudioTrack;

    move-result-object v0

    .line 102430
    .local p0, "audioTrack":Landroid/media/AudioTrack;
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    .line 102431
    return-object v0
    :try_end_1
    .catch Lcom/facebook/ads/redexgen/X/8t; {:try_start_1 .. :try_end_1} :catch_1

    .line 102432
    .end local p0    # "audioTrack":Landroid/media/AudioTrack;
    :catch_1
    move-exception v0

    .line 102433
    .local p0, "retryFailure":Lcom/facebook/ads/redexgen/X/8t;
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/8t;->addSuppressed(Ljava/lang/Throwable;)V

    .line 102434
    .end local v2    # "retryConfiguration":Lcom/facebook/ads/redexgen/X/9H;
    .end local p0    # "retryFailure":Lcom/facebook/ads/redexgen/X/8t;
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0O()V

    .line 102435
    throw v2
.end method

.method private A0G(Lcom/facebook/ads/redexgen/X/9H;)Landroid/media/AudioTrack;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/8t;
        }
    .end annotation

    .line 102436
    :try_start_0
    iget-boolean v2, p0, Lcom/facebook/ads/redexgen/X/oM;->A0b:Z

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oM;->A0E:Lcom/facebook/ads/redexgen/X/qQ;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A01:I

    .line 102437
    invoke-virtual {p1, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/9H;->A0A(ZLcom/facebook/ads/redexgen/X/qQ;I)Landroid/media/AudioTrack;

    move-result-object v1

    .line 102438
    .local v0, "audioTrack":Landroid/media/AudioTrack;
    const/4 v0, 0x0

    if-eqz v0, :cond_0

    .line 102439
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/oM;->A0l(Landroid/media/AudioTrack;)Z

    .line 102440
    :cond_0
    return-object v1
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/8t; {:try_start_0 .. :try_end_0} :catch_0

    .line 102441
    .end local v0    # "audioTrack":Landroid/media/AudioTrack;
    :catch_0
    move-exception v1

    .line 102442
    .local v0, "e":Lcom/facebook/ads/redexgen/X/8t;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0I:Lcom/facebook/ads/redexgen/X/8v;

    if-eqz v0, :cond_1

    .line 102443
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0I:Lcom/facebook/ads/redexgen/X/8v;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/8v;->AD6(Ljava/lang/Exception;)V

    .line 102444
    :cond_1
    throw v1
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/oM;)Landroid/media/AudioTrack;
    .locals 0

    .line 102445
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    return-object p0
.end method

.method private A0I()Lcom/facebook/ads/redexgen/X/px;
    .locals 1

    .line 102446
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0K()Lcom/facebook/ads/redexgen/X/9J;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9J;->A02:Lcom/facebook/ads/redexgen/X/px;

    return-object v0
.end method

.method public static synthetic A0J(Lcom/facebook/ads/redexgen/X/oM;)Lcom/facebook/ads/redexgen/X/8v;
    .locals 0

    .line 102447
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0I:Lcom/facebook/ads/redexgen/X/8v;

    return-object p0
.end method

.method private A0K()Lcom/facebook/ads/redexgen/X/9J;
    .locals 1

    .line 102448
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0M:Lcom/facebook/ads/redexgen/X/9J;

    if-eqz v0, :cond_0

    .line 102449
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0M:Lcom/facebook/ads/redexgen/X/9J;

    .line 102450
    :goto_0
    return-object v0

    .line 102451
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102452
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9J;

    goto :goto_0

    .line 102453
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0N:Lcom/facebook/ads/redexgen/X/9J;

    goto :goto_0
.end method

.method public static A0L(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/oM;->A0y:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x38

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A0M()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 4

    .line 102454
    sget-object v3, Lcom/facebook/ads/redexgen/X/oM;->A11:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v1, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const-string v1, "bxvwh9PGR3JBxYGaTMYcQ8NcsphLXH3B"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    return-object v3

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0N()V
    .locals 3

    .line 102455
    const/4 v2, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0d:[Lcom/facebook/ads/redexgen/X/3k;

    array-length v0, v0

    if-ge v2, v0, :cond_0

    .line 102456
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0d:[Lcom/facebook/ads/redexgen/X/3k;

    aget-object v0, v0, v2

    .line 102457
    .local v1, "audioProcessor":Lcom/facebook/ads/redexgen/X/3k;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3k;->flush()V

    .line 102458
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oM;->A0e:[Ljava/nio/ByteBuffer;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3k;->A8d()Ljava/nio/ByteBuffer;

    move-result-object v0

    aput-object v0, v1, v2

    .line 102459
    .end local v1    # "audioProcessor":Lcom/facebook/ads/redexgen/X/3k;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102460
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private A0O()V
    .locals 4

    .line 102461
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9H;->A0D()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102462
    return-void

    .line 102463
    :cond_0
    const/4 v3, 0x1

    sget-object v1, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const-string v1, "ac1bNzRzCepoXog5xkGE2UP5sVZPG6ZN"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/oM;->A0W:Z

    .line 102464
    return-void
.end method

.method private A0P()V
    .locals 3

    .line 102465
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0a:Z

    if-nez v0, :cond_0

    .line 102466
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0a:Z

    .line 102467
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/oM;->A0k:Lcom/facebook/ads/redexgen/X/95;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A07()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/95;->A0H(J)V

    .line 102468
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 102469
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A02:I

    .line 102470
    :cond_0
    return-void
.end method

.method private A0Q()V
    .locals 11

    .line 102471
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0A:J

    .line 102472
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A09:J

    .line 102473
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0C:J

    .line 102474
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0B:J

    .line 102475
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/oM;->A0V:Z

    .line 102476
    iput v2, p0, Lcom/facebook/ads/redexgen/X/oM;->A04:I

    .line 102477
    new-instance v3, Lcom/facebook/ads/redexgen/X/9J;

    .line 102478
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0I()Lcom/facebook/ads/redexgen/X/px;

    move-result-object v4

    .line 102479
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0p()Z

    move-result v5

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v3 .. v10}, Lcom/facebook/ads/redexgen/X/9J;-><init>(Lcom/facebook/ads/redexgen/X/px;ZJJLcom/facebook/ads/redexgen/X/9B;)V

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/oM;->A0N:Lcom/facebook/ads/redexgen/X/9J;

    .line 102480
    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A08:J

    .line 102481
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/oM;->A0M:Lcom/facebook/ads/redexgen/X/9J;

    .line 102482
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0q:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 102483
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/oM;->A0Q:Ljava/nio/ByteBuffer;

    .line 102484
    iput v2, p0, Lcom/facebook/ads/redexgen/X/oM;->A05:I

    .line 102485
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/oM;->A0R:Ljava/nio/ByteBuffer;

    .line 102486
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/oM;->A0a:Z

    .line 102487
    iput-boolean v2, p0, Lcom/facebook/ads/redexgen/X/oM;->A0U:Z

    .line 102488
    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A03:I

    .line 102489
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/oM;->A0P:Ljava/nio/ByteBuffer;

    .line 102490
    iput v2, p0, Lcom/facebook/ads/redexgen/X/oM;->A02:I

    .line 102491
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0p:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9x;->A0D()V

    .line 102492
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0N()V

    .line 102493
    return-void
.end method

.method private A0R()V
    .locals 2

    .line 102494
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102495
    :goto_0
    return-void

    .line 102496
    :cond_0
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_1

    .line 102497
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A00:F

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/oM;->A0X(Landroid/media/AudioTrack;F)V

    goto :goto_0

    .line 102498
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A00:F

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/oM;->A0Y(Landroid/media/AudioTrack;F)V

    goto :goto_0
.end method

.method private A0S()V
    .locals 6

    .line 102499
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/9H;->A09:[Lcom/facebook/ads/redexgen/X/3k;

    .line 102500
    .local v0, "audioProcessors":[Lcom/facebook/ads/redexgen/X/3k;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 102501
    .local v1, "newAudioProcessors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/facebook/ads/androidx/media3/common/audio/AudioProcessor;>;"
    array-length v3, v5

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v5, v2

    .line 102502
    .local v4, "audioProcessor":Lcom/facebook/ads/redexgen/X/3k;
    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/3k;->AAL()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102503
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102504
    .end local v4    # "audioProcessor":Lcom/facebook/ads/redexgen/X/3k;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102505
    :cond_0
    invoke-interface {v1}, Lcom/facebook/ads/redexgen/X/3k;->flush()V

    goto :goto_1

    .line 102506
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 102507
    .local v2, "count":I
    new-array v0, v1, [Lcom/facebook/ads/redexgen/X/3k;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/ads/redexgen/X/3k;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0d:[Lcom/facebook/ads/redexgen/X/3k;

    .line 102508
    new-array v0, v1, [Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0e:[Ljava/nio/ByteBuffer;

    .line 102509
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0N()V

    .line 102510
    return-void
.end method

.method public static A0T()V
    .locals 1

    const/16 v0, 0x118

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/oM;->A0y:[B

    return-void

    :array_0
    .array-data 1
        0x63t
        0x6at
        0x2ct
        0x25t
        0x38t
        0x70t
        0x6at
        0x6bt
        0x4at
        0x49t
        0x4et
        0x5at
        0x43t
        0x5bt
        0x6et
        0x5at
        0x4bt
        0x46t
        0x40t
        0x7ct
        0x46t
        0x41t
        0x44t
        0x68t
        0x55t
        0x42t
        0x7dt
        0x41t
        0x4ct
        0x54t
        0x48t
        0x5ft
        0x17t
        0x6ct
        0x58t
        0x49t
        0x44t
        0x42t
        0x79t
        0x5ft
        0x4ct
        0x4et
        0x46t
        0x7ft
        0x48t
        0x41t
        0x48t
        0x4ct
        0x5et
        0x48t
        0x79t
        0x45t
        0x5ft
        0x48t
        0x4ct
        0x49t
        0x27t
        0x0t
        0x8t
        0xdt
        0x4t
        0x5t
        0x41t
        0x15t
        0xet
        0x41t
        0x12t
        0x4t
        0x15t
        0x41t
        0x11t
        0xdt
        0x0t
        0x18t
        0x3t
        0x0t
        0x2t
        0xat
        0x41t
        0x11t
        0x0t
        0x13t
        0x0t
        0xct
        0x12t
        0x79t
        0x5et
        0x46t
        0x51t
        0x5ct
        0x59t
        0x54t
        0x10t
        0x60t
        0x73t
        0x7dt
        0x10t
        0x55t
        0x5et
        0x53t
        0x5ft
        0x54t
        0x59t
        0x5et
        0x57t
        0xat
        0x10t
        0x49t
        0x6et
        0x76t
        0x61t
        0x6ct
        0x69t
        0x64t
        0x20t
        0x6ft
        0x75t
        0x74t
        0x70t
        0x75t
        0x74t
        0x20t
        0x63t
        0x68t
        0x61t
        0x6et
        0x6et
        0x65t
        0x6ct
        0x20t
        0x63t
        0x6ft
        0x6et
        0x66t
        0x69t
        0x67t
        0x20t
        0x28t
        0x6dt
        0x6ft
        0x64t
        0x65t
        0x3dt
        0x39t
        0x1et
        0x6t
        0x11t
        0x1ct
        0x19t
        0x14t
        0x50t
        0x1ft
        0x5t
        0x4t
        0x0t
        0x5t
        0x4t
        0x50t
        0x15t
        0x1et
        0x13t
        0x1ft
        0x14t
        0x19t
        0x1et
        0x17t
        0x50t
        0x58t
        0x1dt
        0x1ft
        0x14t
        0x15t
        0x4dt
        0x21t
        0x18t
        0x9t
        0x14t
        0x1dt
        0x68t
        0x5ft
        0x49t
        0x5ft
        0x4et
        0x4et
        0x53t
        0x54t
        0x5dt
        0x1at
        0x49t
        0x4et
        0x5bt
        0x56t
        0x56t
        0x5ft
        0x5et
        0x1at
        0x5bt
        0x4ft
        0x5et
        0x53t
        0x55t
        0x1at
        0x4et
        0x48t
        0x5bt
        0x59t
        0x51t
        0x75t
        0x4et
        0x41t
        0x42t
        0x4ct
        0x45t
        0x0t
        0x54t
        0x4ft
        0x0t
        0x43t
        0x4ft
        0x4et
        0x46t
        0x49t
        0x47t
        0x55t
        0x52t
        0x45t
        0x0t
        0x50t
        0x41t
        0x53t
        0x53t
        0x54t
        0x48t
        0x52t
        0x4ft
        0x55t
        0x47t
        0x48t
        0x0t
        0x46t
        0x4ft
        0x52t
        0x1at
        0x0t
        0x7ct
        0x47t
        0x4ct
        0x51t
        0x59t
        0x4ct
        0x4at
        0x5dt
        0x4ct
        0x4dt
        0x9t
        0x48t
        0x5ct
        0x4dt
        0x40t
        0x46t
        0x9t
        0x4ct
        0x47t
        0x4at
        0x46t
        0x4dt
        0x40t
        0x47t
        0x4et
        0x13t
        0x9t
        0x1ft
        0xbt
        0x1at
        0x17t
        0x11t
        0x51t
        0xct
        0x1ft
        0x9t
    .end array-data
.end method

.method private A0U(J)V
    .locals 12

    .line 102511
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0i()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102512
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oM;->A0g:Lcom/facebook/ads/redexgen/X/3l;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0I()Lcom/facebook/ads/redexgen/X/px;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/3l;->A4F(Lcom/facebook/ads/redexgen/X/px;)Lcom/facebook/ads/redexgen/X/px;

    move-result-object v5

    .line 102513
    .local v2, "playbackParameters":Lcom/facebook/ads/redexgen/X/px;
    :goto_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102514
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oM;->A0g:Lcom/facebook/ads/redexgen/X/3l;

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0p()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/3l;->A4G(Z)Z

    move-result v6

    .line 102515
    .local v0, "skipSilenceEnabled":Z
    :goto_1
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/oM;->A0q:Ljava/util/ArrayDeque;

    new-instance v4, Lcom/facebook/ads/redexgen/X/9J;

    .line 102516
    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    .line 102517
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A07()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/9H;->A08(J)J

    move-result-wide v9

    const/4 v11, 0x0

    invoke-direct/range {v4 .. v11}, Lcom/facebook/ads/redexgen/X/9J;-><init>(Lcom/facebook/ads/redexgen/X/px;ZJJLcom/facebook/ads/redexgen/X/9B;)V

    .line 102518
    invoke-virtual {v2, v4}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 102519
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0S()V

    .line 102520
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0I:Lcom/facebook/ads/redexgen/X/8v;

    if-eqz v0, :cond_0

    .line 102521
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0I:Lcom/facebook/ads/redexgen/X/8v;

    invoke-interface {v0, v6}, Lcom/facebook/ads/redexgen/X/8v;->AFy(Z)V

    .line 102522
    :cond_0
    return-void

    .line 102523
    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    .line 102524
    :cond_2
    sget-object v5, Lcom/facebook/ads/redexgen/X/px;->A06:Lcom/facebook/ads/redexgen/X/px;

    sget-object v1, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const-string v1, "I2oaxDVd9h4oXXSjJqrHfFArwnmkYbuU"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "djNSsSrQ9W3py9jFqud3MNGsNXIKPv6H"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    goto :goto_0
.end method

.method private A0V(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/8y;
        }
    .end annotation

    .line 102525
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0d:[Lcom/facebook/ads/redexgen/X/3k;

    array-length v4, v0

    .line 102526
    .local v0, "count":I
    move v3, v4

    .line 102527
    .local v1, "index":I
    :goto_0
    if-ltz v3, :cond_7

    .line 102528
    if-lez v3, :cond_4

    .line 102529
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/oM;->A0e:[Ljava/nio/ByteBuffer;

    add-int/lit8 v6, v3, -0x1

    sget-object v2, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_6

    sget-object v2, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const-string v1, "0P"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    aget-object v0, v5, v6

    .line 102530
    .local v2, "input":Ljava/nio/ByteBuffer;
    :goto_1
    if-ne v3, v4, :cond_2

    .line 102531
    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/ads/redexgen/X/oM;->A0e(Ljava/nio/ByteBuffer;J)V

    .line 102532
    .end local v3
    .end local v4
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102533
    return-void

    .line 102534
    .end local v2    # "input":Ljava/nio/ByteBuffer;
    :cond_1
    add-int/lit8 v3, v3, -0x1

    .line 102535
    goto :goto_0

    .line 102536
    :cond_2
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oM;->A0d:[Lcom/facebook/ads/redexgen/X/3k;

    aget-object v2, v1, v3

    .line 102537
    .local v3, "audioProcessor":Lcom/facebook/ads/redexgen/X/3k;
    iget v1, p0, Lcom/facebook/ads/redexgen/X/oM;->A03:I

    if-le v3, v1, :cond_3

    .line 102538
    invoke-interface {v2, v0}, Lcom/facebook/ads/redexgen/X/3k;->AHH(Ljava/nio/ByteBuffer;)V

    .line 102539
    :cond_3
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/3k;->A8d()Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 102540
    .local v4, "output":Ljava/nio/ByteBuffer;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oM;->A0e:[Ljava/nio/ByteBuffer;

    aput-object v2, v1, v3

    .line 102541
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102542
    add-int/lit8 v3, v3, 0x1

    .line 102543
    goto :goto_0

    .line 102544
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0Q:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0Q:Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_5
    sget-object v0, Lcom/facebook/ads/redexgen/X/3k;->A00:Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 102545
    :cond_7
    return-void
.end method

.method private A0W(Landroid/media/AudioTrack;)V
    .locals 4

    .line 102546
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0O:Lcom/facebook/ads/redexgen/X/9P;

    if-nez v0, :cond_0

    .line 102547
    new-instance v0, Lcom/facebook/ads/redexgen/X/9P;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/9P;-><init>(Lcom/facebook/ads/redexgen/X/oM;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0O:Lcom/facebook/ads/redexgen/X/9P;

    .line 102548
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/oM;->A0O:Lcom/facebook/ads/redexgen/X/9P;

    sget-object v2, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const-string v1, "8t8nFWsxRl9HTQxqXeO3m9pm7diLrI9Q"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-virtual {v3, p1}, Lcom/facebook/ads/redexgen/X/9P;->A00(Landroid/media/AudioTrack;)V

    .line 102549
    return-void
.end method

.method public static A0X(Landroid/media/AudioTrack;F)V
    .locals 0

    .line 102550
    invoke-virtual {p0, p1}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 102551
    return-void
.end method

.method public static A0Y(Landroid/media/AudioTrack;F)V
    .locals 0

    .line 102552
    invoke-virtual {p0, p1, p1}, Landroid/media/AudioTrack;->setStereoVolume(FF)I

    .line 102553
    return-void
.end method

.method private A0Z(Landroid/media/AudioTrack;Lcom/facebook/ads/redexgen/X/48;Lcom/facebook/ads/redexgen/X/8v;Lcom/facebook/ads/redexgen/X/8r;)V
    .locals 10

    .line 102554
    move-object v9, p2

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/48;->A02()Z

    .line 102555
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 102556
    .local v3, "audioTrackThreadHandler":Landroid/os/Handler;
    sget-object v3, Lcom/facebook/ads/redexgen/X/oM;->A10:Ljava/lang/Object;

    monitor-enter v3

    .line 102557
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/oM;->A0x:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 102558
    const/16 v2, 0x17

    const/16 v1, 0x21

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oM;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A0u(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/oM;->A0x:Ljava/util/concurrent/ExecutorService;

    .line 102559
    :cond_0
    sget v0, Lcom/facebook/ads/redexgen/X/oM;->A0w:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/facebook/ads/redexgen/X/oM;->A0w:I

    .line 102560
    sget-object v0, Lcom/facebook/ads/redexgen/X/oM;->A0x:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/facebook/ads/redexgen/X/9A;

    move-object v8, p4

    move-object v6, p3

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/9A;-><init>(Landroid/media/AudioTrack;Lcom/facebook/ads/redexgen/X/8v;Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/8r;Lcom/facebook/ads/redexgen/X/48;)V

    invoke-interface {v0, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 102561
    monitor-exit v3

    .line 102562
    return-void

    .line 102563
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static synthetic A0a(Landroid/media/AudioTrack;Lcom/facebook/ads/redexgen/X/8v;Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/8r;Lcom/facebook/ads/redexgen/X/48;)V
    .locals 4

    .line 102564
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->flush()V

    .line 102565
    invoke-virtual {p0}, Landroid/media/AudioTrack;->release()V

    .line 102566
    if-eqz p1, :cond_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102567
    new-instance v0, Lcom/facebook/ads/redexgen/X/99;

    invoke-direct {v0, p1, p3}, Lcom/facebook/ads/redexgen/X/99;-><init>(Lcom/facebook/ads/redexgen/X/8v;Lcom/facebook/ads/redexgen/X/8r;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102568
    :cond_0
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/48;->A04()Z

    .line 102569
    sget-object v1, Lcom/facebook/ads/redexgen/X/oM;->A10:Ljava/lang/Object;

    monitor-enter v1

    .line 102570
    :try_start_1
    sget v0, Lcom/facebook/ads/redexgen/X/oM;->A0w:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/facebook/ads/redexgen/X/oM;->A0w:I

    .line 102571
    sget v0, Lcom/facebook/ads/redexgen/X/oM;->A0w:I

    if-nez v0, :cond_1

    .line 102572
    sget-object v0, Lcom/facebook/ads/redexgen/X/oM;->A0x:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 102573
    sput-object v3, Lcom/facebook/ads/redexgen/X/oM;->A0x:Ljava/util/concurrent/ExecutorService;

    .line 102574
    :cond_1
    monitor-exit v1

    .line 102575
    return-void

    .line 102576
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 102577
    :catchall_1
    move-exception v2

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102578
    new-instance v0, Lcom/facebook/ads/redexgen/X/99;

    invoke-direct {v0, p1, p3}, Lcom/facebook/ads/redexgen/X/99;-><init>(Lcom/facebook/ads/redexgen/X/8v;Lcom/facebook/ads/redexgen/X/8r;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 102579
    :cond_2
    invoke-virtual {p4}, Lcom/facebook/ads/redexgen/X/48;->A04()Z

    .line 102580
    sget-object v1, Lcom/facebook/ads/redexgen/X/oM;->A10:Ljava/lang/Object;

    monitor-enter v1

    .line 102581
    :try_start_2
    sget v0, Lcom/facebook/ads/redexgen/X/oM;->A0w:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/facebook/ads/redexgen/X/oM;->A0w:I

    .line 102582
    sget v0, Lcom/facebook/ads/redexgen/X/oM;->A0w:I

    if-nez v0, :cond_3

    .line 102583
    sget-object v0, Lcom/facebook/ads/redexgen/X/oM;->A0x:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 102584
    sput-object v3, Lcom/facebook/ads/redexgen/X/oM;->A0x:Ljava/util/concurrent/ExecutorService;

    .line 102585
    :cond_3
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 102586
    throw v2

    .line 102587
    :catchall_2
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method private A0b(Lcom/facebook/ads/redexgen/X/px;)V
    .locals 5

    .line 102588
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102589
    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    .line 102590
    invoke-virtual {v0}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/px;->A01:F

    .line 102591
    invoke-virtual {v1, v0}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/px;->A00:F

    .line 102592
    invoke-virtual {v1, v0}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    move-result-object v1

    .line 102593
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    move-result-object v1

    .line 102594
    .local v0, "playbackParams":Landroid/media/PlaybackParams;
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102595
    :catch_0
    move-exception v4

    .line 102596
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x7

    const/16 v1, 0x10

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oM;->A0L(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x38

    const/16 v1, 0x1d

    const/16 v0, 0x59

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oM;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Lcom/facebook/ads/redexgen/X/4g;->A0A(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102597
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    .line 102598
    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/PlaybackParams;->getSpeed()F

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/PlaybackParams;->getPitch()F

    move-result v0

    new-instance p1, Lcom/facebook/ads/redexgen/X/px;

    invoke-direct {p1, v1, v0}, Lcom/facebook/ads/redexgen/X/px;-><init>(FF)V

    .line 102599
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oM;->A0k:Lcom/facebook/ads/redexgen/X/95;

    iget v0, p1, Lcom/facebook/ads/redexgen/X/px;->A01:F

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/95;->A0G(F)V

    .line 102600
    .end local v0    # "playbackParams":Landroid/media/PlaybackParams;
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/oM;->A0G:Lcom/facebook/ads/redexgen/X/px;

    .line 102601
    return-void
.end method

.method private A0c(Lcom/facebook/ads/redexgen/X/px;Z)V
    .locals 9

    .line 102602
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0K()Lcom/facebook/ads/redexgen/X/9J;

    move-result-object v1

    .line 102603
    .local v0, "currentMediaPositionParameters":Lcom/facebook/ads/redexgen/X/9J;
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/9J;->A02:Lcom/facebook/ads/redexgen/X/px;

    move-object v2, p1

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/px;->equals(Ljava/lang/Object;)Z

    move-result v0

    move v3, p2

    if-eqz v0, :cond_0

    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/9J;->A03:Z

    if-eq v3, v0, :cond_1

    .line 102604
    :cond_0
    new-instance v1, Lcom/facebook/ads/redexgen/X/9J;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    invoke-direct/range {v1 .. v8}, Lcom/facebook/ads/redexgen/X/9J;-><init>(Lcom/facebook/ads/redexgen/X/px;ZJJLcom/facebook/ads/redexgen/X/9B;)V

    .line 102605
    .local v1, "mediaPositionParameters":Lcom/facebook/ads/redexgen/X/9J;
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102606
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/oM;->A0M:Lcom/facebook/ads/redexgen/X/9J;

    .line 102607
    .end local v1    # "mediaPositionParameters":Lcom/facebook/ads/redexgen/X/9J;
    :cond_1
    :goto_0
    return-void

    .line 102608
    :cond_2
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/oM;->A0N:Lcom/facebook/ads/redexgen/X/9J;

    goto :goto_0
.end method

.method public static synthetic A0d(Lcom/facebook/ads/redexgen/X/8v;Lcom/facebook/ads/redexgen/X/8r;)V
    .locals 0

    .line 102609
    invoke-interface {p0, p1}, Lcom/facebook/ads/redexgen/X/8v;->AD8(Lcom/facebook/ads/redexgen/X/8r;)V

    return-void
.end method

.method private A0e(Ljava/nio/ByteBuffer;J)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/8y;
        }
    .end annotation

    .line 102610
    move-object v8, p1

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 102611
    return-void

    .line 102612
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0R:Ljava/nio/ByteBuffer;

    const/16 v6, 0x15

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_9

    .line 102613
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0R:Ljava/nio/ByteBuffer;

    if-ne v0, v8, :cond_8

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 102614
    .end local v0
    .end local v4
    :cond_1
    :goto_1
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    sget-object v2, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_14

    .line 102615
    .restart local v0
    sget-object v2, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const-string v1, "3eWYirSbyPmDL1bYCzZXBxfzFZ0IdKrC"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "GyxGkXW2OhP0jBJSoZP6T4LL67dzWnKX"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v5, 0x0

    .line 102616
    .local v4, "bytesWrittenOrError":I
    sget v0, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    if-ge v0, v6, :cond_5

    .line 102617
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/oM;->A0k:Lcom/facebook/ads/redexgen/X/95;

    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0C:J

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/95;->A0C(J)I

    move-result v0

    .line 102618
    .local v1, "bytesToWrite":I
    if-lez v0, :cond_2

    .line 102619
    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 102620
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oM;->A0c:[B

    iget v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A06:I

    .line 102621
    invoke-virtual {v2, v1, v0, v5}, Landroid/media/AudioTrack;->write([BII)I

    move-result v5

    .line 102622
    if-lez v5, :cond_2

    .line 102623
    iget v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A06:I

    add-int/2addr v0, v5

    iput v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A06:I

    .line 102624
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v5

    invoke-virtual {v8, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 102625
    :cond_2
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A07:J

    .line 102626
    const-wide/16 v6, 0x0

    if-gez v5, :cond_d

    .line 102627
    .local v1, "error":I
    invoke-static {v5}, Lcom/facebook/ads/redexgen/X/oM;->A0k(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-wide v1, p0, Lcom/facebook/ads/redexgen/X/oM;->A0B:J

    cmp-long v0, v1, v6

    if-lez v0, :cond_4

    .line 102628
    .local v2, "isRecoverable":Z
    :goto_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9H;->A07:Lcom/facebook/ads/redexgen/X/qI;

    new-instance v1, Lcom/facebook/ads/redexgen/X/8y;

    invoke-direct {v1, v5, v0, v4}, Lcom/facebook/ads/redexgen/X/8y;-><init>(ILcom/facebook/ads/redexgen/X/qI;Z)V

    .line 102629
    .local v3, "e":Lcom/facebook/ads/redexgen/X/8y;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0I:Lcom/facebook/ads/redexgen/X/8v;

    if-eqz v0, :cond_3

    .line 102630
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0I:Lcom/facebook/ads/redexgen/X/8v;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/8v;->AD6(Ljava/lang/Exception;)V

    .line 102631
    :cond_3
    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/8y;->A02:Z

    if-nez v0, :cond_c

    .line 102632
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0o:Lcom/facebook/ads/redexgen/X/9M;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/9M;->A01(Ljava/lang/Exception;)V

    .line 102633
    return-void

    .line 102634
    :cond_4
    const/4 v4, 0x0

    goto :goto_3

    .line 102635
    :cond_5
    iget-boolean v5, p0, Lcom/facebook/ads/redexgen/X/oM;->A0b:Z

    sget-object v1, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x43

    if-eq v1, v0, :cond_14

    sget-object v2, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const-string v1, "ZkKj9ZygtLpdvIDMWffq04xWvvg8fJzl"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    if-eqz v5, :cond_7

    .line 102636
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v10, p2

    cmp-long v0, v10, v1

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_4
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 102637
    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    .line 102638
    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/facebook/ads/redexgen/X/oM;->A05(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I

    move-result v5

    goto :goto_2

    .line 102639
    :cond_6
    const/4 v0, 0x0

    goto :goto_4

    .line 102640
    :cond_7
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    invoke-static {v0, v8, v9}, Lcom/facebook/ads/redexgen/X/oM;->A04(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    move-result v5

    goto :goto_2

    .line 102641
    :cond_8
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 102642
    :cond_9
    iput-object v8, p0, Lcom/facebook/ads/redexgen/X/oM;->A0R:Ljava/nio/ByteBuffer;

    .line 102643
    sget v0, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    if-ge v0, v6, :cond_1

    .line 102644
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    .line 102645
    .local v0, "bytesRemaining":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0c:[B

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0c:[B

    array-length v0, v0

    if-ge v0, v2, :cond_b

    .line 102646
    :cond_a
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0c:[B

    .line 102647
    :cond_b
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    .line 102648
    .local v4, "originalPosition":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0c:[B

    invoke-virtual {v8, v0, v3, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 102649
    invoke-virtual {v8, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 102650
    iput v3, p0, Lcom/facebook/ads/redexgen/X/oM;->A06:I

    goto/16 :goto_1

    .line 102651
    :cond_c
    throw v1

    .line 102652
    .end local v1    # "error":I
    .end local v2    # "isRecoverable":Z
    .end local v3    # "e":Lcom/facebook/ads/redexgen/X/8y;
    :cond_d
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0o:Lcom/facebook/ads/redexgen/X/9M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9M;->A00()V

    .line 102653
    .local v1, "bytesWritten":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/oM;->A0l(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 102654
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0B:J

    cmp-long v2, v0, v6

    if-lez v2, :cond_e

    .line 102655
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/oM;->A0V:Z

    .line 102656
    :cond_e
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0X:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0I:Lcom/facebook/ads/redexgen/X/8v;

    if-eqz v0, :cond_f

    if-ge v5, v9, :cond_f

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0V:Z

    if-nez v0, :cond_f

    .line 102657
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0I:Lcom/facebook/ads/redexgen/X/8v;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8v;->AF3()V

    .line 102658
    :cond_f
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9H;->A04:I

    if-nez v0, :cond_10

    .line 102659
    iget-wide v2, p0, Lcom/facebook/ads/redexgen/X/oM;->A0C:J

    int-to-long v0, v5

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/ads/redexgen/X/oM;->A0C:J

    .line 102660
    :cond_10
    if-ne v5, v9, :cond_12

    .line 102661
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9H;->A04:I

    if-eqz v0, :cond_11

    .line 102662
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0Q:Ljava/nio/ByteBuffer;

    if-ne v8, v0, :cond_13

    :goto_5
    invoke-static {v4}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 102663
    iget-wide v4, p0, Lcom/facebook/ads/redexgen/X/oM;->A0B:J

    iget v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A04:I

    int-to-long v2, v0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A05:I

    int-to-long v0, v0

    mul-long/2addr v2, v0

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/facebook/ads/redexgen/X/oM;->A0B:J

    .line 102664
    :cond_11
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0R:Ljava/nio/ByteBuffer;

    .line 102665
    :cond_12
    return-void

    .line 102666
    :cond_13
    const/4 v4, 0x0

    goto :goto_5

    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0f()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/8y;
        }
    .end annotation

    .line 102667
    const/4 v7, 0x0

    .line 102668
    .local v0, "audioProcessorNeedsEndOfStream":Z
    iget v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A03:I

    const/4 v4, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 102669
    iput v4, p0, Lcom/facebook/ads/redexgen/X/oM;->A03:I

    .line 102670
    const/4 v7, 0x1

    .line 102671
    :cond_0
    :goto_0
    iget v5, p0, Lcom/facebook/ads/redexgen/X/oM;->A03:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0d:[Lcom/facebook/ads/redexgen/X/3k;

    array-length v0, v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x1

    if-ge v5, v0, :cond_4

    .line 102672
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/oM;->A0d:[Lcom/facebook/ads/redexgen/X/3k;

    iget v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A03:I

    aget-object v0, v5, v0

    .line 102673
    .local v1, "audioProcessor":Lcom/facebook/ads/redexgen/X/3k;
    if-eqz v7, :cond_1

    .line 102674
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3k;->AHG()V

    .line 102675
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/facebook/ads/redexgen/X/oM;->A0V(J)V

    .line 102676
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3k;->AAP()Z

    move-result v5

    sget-object v2, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const-string v1, "SZlzkFrjT9RrDQln4ds2mG9At4QQTsjU"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "7YjBVNvSPjH845plY2W9SI0PPB4m8Pgz"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    if-nez v5, :cond_2

    .line 102677
    return v4

    .line 102678
    :cond_2
    const/4 v7, 0x1

    .line 102679
    iget v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A03:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A03:I

    .line 102680
    .end local v1    # "audioProcessor":Lcom/facebook/ads/redexgen/X/3k;
    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 102681
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0R:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    .line 102682
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0R:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/ads/redexgen/X/oM;->A0e(Ljava/nio/ByteBuffer;J)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_5

    .line 102683
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0R:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    .line 102684
    :goto_1
    return v4

    .line 102685
    :cond_5
    sget-object v2, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const-string v1, "ih"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0R:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_6

    goto :goto_1

    .line 102686
    :cond_6
    iput v3, p0, Lcom/facebook/ads/redexgen/X/oM;->A03:I

    .line 102687
    return v6
.end method

.method private A0g()Z
    .locals 10
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "MERGED"
        }
        value = "D45157249: Retry Audio Track Init failure with less Audio track allocation sizes; Upstream has this feature"
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/8t;
        }
    .end annotation

    .line 102688
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0h:Lcom/facebook/ads/redexgen/X/48;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/48;->A03()Z

    move-result v1

    const/4 v0, 0x0

    if-nez v1, :cond_0

    .line 102689
    return v0

    .line 102690
    :cond_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0S:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0F()Landroid/media/AudioTrack;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    sget-object v2, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/oM;->A0G(Lcom/facebook/ads/redexgen/X/9H;)Landroid/media/AudioTrack;

    move-result-object v0

    goto :goto_0

    .line 102691
    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const-string v1, "dWhjJD4ryPYmrGCHimoCOlqhHDAwt6Vc"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "fifoJCnFOIc3PbrGHGLYECSFH4AKcCFA"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/oM;->A0l(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102692
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/oM;->A0W(Landroid/media/AudioTrack;)V

    .line 102693
    iget v1, p0, Lcom/facebook/ads/redexgen/X/oM;->A0f:I

    const/4 v0, 0x3

    if-eq v1, v0, :cond_3

    .line 102694
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9H;->A07:Lcom/facebook/ads/redexgen/X/qI;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/qI;->A08:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9H;->A07:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A09:I

    invoke-virtual {v2, v1, v0}, Landroid/media/AudioTrack;->setOffloadDelayPadding(II)V

    .line 102695
    :cond_3
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x1f

    if-lt v1, v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0H:Lcom/facebook/ads/redexgen/X/8O;

    if-eqz v0, :cond_4

    .line 102696
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0H:Lcom/facebook/ads/redexgen/X/8O;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/9D;->A00(Landroid/media/AudioTrack;Lcom/facebook/ads/redexgen/X/8O;)V

    .line 102697
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A01:I

    .line 102698
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/oM;->A0k:Lcom/facebook/ads/redexgen/X/95;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/9H;->A04:I

    const/4 v0, 0x2

    const/4 v3, 0x1

    if-ne v1, v0, :cond_9

    const/4 v6, 0x1

    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    iget v7, v0, Lcom/facebook/ads/redexgen/X/9H;->A03:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    iget v8, v0, Lcom/facebook/ads/redexgen/X/9H;->A05:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    iget v9, v0, Lcom/facebook/ads/redexgen/X/9H;->A00:I

    invoke-virtual/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/95;->A0I(Landroid/media/AudioTrack;ZIII)V

    .line 102699
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0R()V

    .line 102700
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0F:Lcom/facebook/ads/redexgen/X/21;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/21;->A01:I

    if-eqz v0, :cond_5

    .line 102701
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0F:Lcom/facebook/ads/redexgen/X/21;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/21;->A01:I

    invoke-virtual {v1, v0}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    .line 102702
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/oM;->A0F:Lcom/facebook/ads/redexgen/X/21;

    sget-object v1, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_8

    iget v0, v4, Lcom/facebook/ads/redexgen/X/21;->A00:F

    invoke-virtual {v5, v0}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    .line 102703
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0J:Lcom/facebook/ads/redexgen/X/9E;

    if-eqz v0, :cond_6

    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x17

    if-lt v1, v0, :cond_6

    .line 102704
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0J:Lcom/facebook/ads/redexgen/X/9E;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/9C;->A00(Landroid/media/AudioTrack;Lcom/facebook/ads/redexgen/X/9E;)V

    .line 102705
    :cond_6
    iput-boolean v3, p0, Lcom/facebook/ads/redexgen/X/oM;->A0Y:Z

    .line 102706
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0I:Lcom/facebook/ads/redexgen/X/8v;

    if-eqz v0, :cond_7

    .line 102707
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oM;->A0I:Lcom/facebook/ads/redexgen/X/8v;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9H;->A0B()Lcom/facebook/ads/redexgen/X/8r;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/8v;->AD7(Lcom/facebook/ads/redexgen/X/8r;)V

    .line 102708
    :cond_7
    return v3

    :cond_8
    sget-object v2, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const-string v1, "RIRRfrrRSIs4t73WNQ17weV6jTByi7uZ"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    iget v0, v4, Lcom/facebook/ads/redexgen/X/21;->A00:F

    invoke-virtual {v5, v0}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    goto :goto_2

    .line 102709
    :cond_9
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private A0h()Z
    .locals 1

    .line 102710
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0i()Z
    .locals 4

    .line 102711
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0b:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9H;->A07:Lcom/facebook/ads/redexgen/X/qI;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    .line 102712
    const/16 v2, 0x10f

    const/16 v1, 0x9

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oM;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9H;->A07:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A0C:I

    .line 102713
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/oM;->A0j(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 102714
    :goto_0
    return v0

    .line 102715
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0j(I)Z
    .locals 1

    .line 102716
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0s:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/5C;->A14(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0k(I)Z
    .locals 2

    .line 102717
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x18

    if-lt v1, v0, :cond_0

    const/4 v0, -0x6

    if-eq p0, v0, :cond_1

    :cond_0
    const/16 v0, -0x20

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0l(Landroid/media/AudioTrack;)Z
    .locals 2

    .line 102718
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x1d

    if-lt v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/media/AudioTrack;->isOffloadedPlayback()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private A0m(Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/qQ;)Z
    .locals 4

    .line 102719
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x1d

    const/4 v3, 0x0

    if-lt v1, v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0f:I

    if-nez v0, :cond_1

    .line 102720
    .end local v0
    .end local v1
    .end local v3
    :cond_0
    return v3

    .line 102721
    :cond_1
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0R:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/3J;->A03(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 102722
    .local v0, "encoding":I
    if-nez v2, :cond_2

    .line 102723
    return v3

    .line 102724
    :cond_2
    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A06:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A01(I)I

    move-result v1

    .line 102725
    .local v1, "channelConfig":I
    if-nez v1, :cond_3

    .line 102726
    return v3

    .line 102727
    :cond_3
    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0G:I

    invoke-static {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/oM;->A0D(III)Landroid/media/AudioFormat;

    move-result-object v1

    .line 102728
    .local v3, "audioFormat":Landroid/media/AudioFormat;
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/qQ;->A01()Lcom/facebook/ads/redexgen/X/1z;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/1z;->A00:Landroid/media/AudioAttributes;

    .line 102729
    invoke-direct {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/oM;->A03(Landroid/media/AudioFormat;Landroid/media/AudioAttributes;)I

    move-result v0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 102730
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 102731
    :pswitch_0
    return v2

    .line 102732
    :pswitch_1
    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A08:I

    if-nez v0, :cond_4

    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A09:I

    if-eqz v0, :cond_8

    :cond_4
    const/4 v1, 0x1

    .line 102733
    .local p0, "isGapless":Z
    :goto_0
    iget v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0f:I

    if-ne v0, v2, :cond_7

    const/4 v0, 0x1

    .line 102734
    .local p2, "gaplessSupportRequired":Z
    :goto_1
    if-eqz v1, :cond_5

    if-nez v0, :cond_6

    :cond_5
    const/4 v3, 0x1

    :cond_6
    return v3

    .line 102735
    :cond_7
    const/4 v0, 0x0

    goto :goto_1

    .line 102736
    :cond_8
    const/4 v1, 0x0

    goto :goto_0

    .line 102737
    .end local p0    # "isGapless":Z
    .end local p2    # "gaplessSupportRequired":Z
    :pswitch_2
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic A0n(Lcom/facebook/ads/redexgen/X/oM;)Z
    .locals 0

    .line 102738
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0X:Z

    return p0
.end method


# virtual methods
.method public final A0o(Lcom/facebook/ads/redexgen/X/qI;)I
    .locals 5

    .line 102739
    const/16 v2, 0x10f

    const/16 v1, 0x9

    const/16 v0, 0x46

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oM;->A0L(III)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_4

    .line 102740
    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0C:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A15(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102741
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x55

    const/16 v1, 0x16

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oM;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/qI;->A0C:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x7

    const/16 v1, 0x10

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oM;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 102742
    return v4

    .line 102743
    :cond_0
    iget v4, p1, Lcom/facebook/ads/redexgen/X/qI;->A0C:I

    sget-object v1, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const-string v1, "pL"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eq v4, v3, :cond_2

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0s:Z

    if-eqz v0, :cond_3

    iget v1, p1, Lcom/facebook/ads/redexgen/X/qI;->A0C:I

    const/4 v0, 0x4

    if-ne v1, v0, :cond_3

    .line 102744
    :cond_2
    return v3

    .line 102745
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 102746
    :cond_4
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0W:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0E:Lcom/facebook/ads/redexgen/X/qQ;

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/oM;->A0m(Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/qQ;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 102747
    return v3

    .line 102748
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0j:Lcom/facebook/ads/redexgen/X/8R;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/8R;->A0B(Lcom/facebook/ads/redexgen/X/qI;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 102749
    return v3

    .line 102750
    :cond_6
    return v4
.end method

.method public final A0p()Z
    .locals 1

    .line 102751
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0K()Lcom/facebook/ads/redexgen/X/9J;

    move-result-object v0

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/9J;->A03:Z

    return v0
.end method

.method public final A59(Lcom/facebook/ads/redexgen/X/qI;I[I)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/8s;
        }
    .end annotation

    .line 102752
    move/from16 v14, p2

    move-object/from16 v4, p3

    move-object/from16 v1, p0

    const/16 v3, 0x10f

    const/16 v2, 0x9

    const/16 v0, 0x46

    invoke-static {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/oM;->A0L(III)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v7, p1

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 102753
    iget v0, v7, Lcom/facebook/ads/redexgen/X/qI;->A0C:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A15(I)Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 102754
    iget v3, v7, Lcom/facebook/ads/redexgen/X/qI;->A0C:I

    iget v0, v7, Lcom/facebook/ads/redexgen/X/qI;->A06:I

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/5C;->A06(II)I

    move-result v8

    .line 102755
    .local v3, "inputPcmFrameSize":I
    iget v0, v7, Lcom/facebook/ads/redexgen/X/qI;->A0C:I

    invoke-direct {v1, v0}, Lcom/facebook/ads/redexgen/X/oM;->A0j(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102756
    iget-object v15, v1, Lcom/facebook/ads/redexgen/X/oM;->A0t:[Lcom/facebook/ads/redexgen/X/3k;

    .line 102757
    .local v4, "availableAudioProcessors":[Lcom/facebook/ads/redexgen/X/3k;
    :goto_0
    iget-object v5, v1, Lcom/facebook/ads/redexgen/X/oM;->A0p:Lcom/facebook/ads/redexgen/X/9x;

    iget v3, v7, Lcom/facebook/ads/redexgen/X/qI;->A08:I

    iget v0, v7, Lcom/facebook/ads/redexgen/X/qI;->A09:I

    invoke-virtual {v5, v3, v0}, Lcom/facebook/ads/redexgen/X/9x;->A0E(II)V

    .line 102758
    sget v3, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x15

    if-ge v3, v0, :cond_1

    iget v3, v7, Lcom/facebook/ads/redexgen/X/qI;->A06:I

    const/16 v0, 0x8

    if-ne v3, v0, :cond_1

    if-nez v4, :cond_1

    .line 102759
    const/4 v0, 0x6

    new-array v4, v0, [I

    .line 102760
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/qI;
    .local v0, "outputChannels":[I
    const/4 v3, 0x0

    .local v5, "i":I
    :goto_1
    array-length v0, v4

    if-ge v3, v0, :cond_1

    .line 102761
    aput v3, v4, v3

    .line 102762
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 102763
    :cond_0
    iget-object v15, v1, Lcom/facebook/ads/redexgen/X/oM;->A0u:[Lcom/facebook/ads/redexgen/X/3k;

    goto :goto_0

    .line 102764
    .end local p1
    .local v5, "outputChannels":[I
    :cond_1
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/oM;->A0l:Lcom/facebook/ads/redexgen/X/A7;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/A7;->A0C([I)V

    .line 102765
    iget v4, v7, Lcom/facebook/ads/redexgen/X/qI;->A0G:I

    iget v3, v7, Lcom/facebook/ads/redexgen/X/qI;->A06:I

    iget v0, v7, Lcom/facebook/ads/redexgen/X/qI;->A0C:I

    new-instance v5, Lcom/facebook/ads/redexgen/X/3i;

    invoke-direct {v5, v4, v3, v0}, Lcom/facebook/ads/redexgen/X/3i;-><init>(III)V

    .line 102766
    .local v0, "outputFormat":Lcom/facebook/ads/redexgen/X/3i;
    array-length v6, v15

    const/4 v4, 0x0

    .end local v0    # "outputFormat":Lcom/facebook/ads/redexgen/X/3i;
    .local v7, "outputFormat":Lcom/facebook/ads/redexgen/X/3i;
    :goto_2
    if-ge v4, v6, :cond_3

    aget-object v0, v15, v4

    .line 102767
    .local v8, "audioProcessor":Lcom/facebook/ads/redexgen/X/3k;
    :try_start_0
    invoke-interface {v0, v5}, Lcom/facebook/ads/redexgen/X/3k;->A57(Lcom/facebook/ads/redexgen/X/3i;)Lcom/facebook/ads/redexgen/X/3i;

    move-result-object v3

    .line 102768
    .local v9, "nextFormat":Lcom/facebook/ads/redexgen/X/3i;
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/3k;->AAL()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102769
    move-object v5, v3

    .line 102770
    .end local v9    # "nextFormat":Lcom/facebook/ads/redexgen/X/3i;
    .end local v8    # "audioProcessor":Lcom/facebook/ads/redexgen/X/3k;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/3j; {:try_start_0 .. :try_end_0} :catch_0

    .line 102771
    .restart local v8    # "audioProcessor":Lcom/facebook/ads/redexgen/X/3k;
    :catch_0
    move-exception v1

    .line 102772
    .local v0, "e":Lcom/facebook/ads/redexgen/X/3j;
    new-instance v0, Lcom/facebook/ads/redexgen/X/8s;

    invoke-direct {v0, v1, v7}, Lcom/facebook/ads/redexgen/X/8s;-><init>(Ljava/lang/Throwable;Lcom/facebook/ads/redexgen/X/qI;)V

    throw v0

    .line 102773
    .end local v0    # "e":Lcom/facebook/ads/redexgen/X/3j;
    .end local v8    # "audioProcessor":Lcom/facebook/ads/redexgen/X/3k;
    :cond_3
    const/4 v9, 0x0

    .line 102774
    .local v0, "outputMode":I
    iget v13, v5, Lcom/facebook/ads/redexgen/X/3i;->A02:I

    .line 102775
    .local v6, "outputEncoding":I
    iget v11, v5, Lcom/facebook/ads/redexgen/X/3i;->A03:I

    .line 102776
    .local v8, "outputSampleRate":I
    iget v0, v5, Lcom/facebook/ads/redexgen/X/3i;->A01:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A01(I)I

    move-result v12

    .line 102777
    .local v9, "outputChannelConfig":I
    iget v0, v5, Lcom/facebook/ads/redexgen/X/3i;->A01:I

    invoke-static {v13, v0}, Lcom/facebook/ads/redexgen/X/5C;->A06(II)I

    move-result v10

    .line 102778
    .local v7, "outputPcmFrameSize":I
    goto :goto_3

    .line 102779
    .end local v0    # "outputMode":I
    .end local v3    # "inputPcmFrameSize":I
    .end local v4    # "availableAudioProcessors":[Lcom/facebook/ads/redexgen/X/3k;
    .end local v5    # "outputChannels":[I
    .end local v6    # "outputEncoding":I
    .end local v7    # "outputPcmFrameSize":I
    .end local v8    # "outputSampleRate":I
    .end local v9    # "outputChannelConfig":I
    .restart local p1    # null:Lcom/facebook/ads/redexgen/X/qI;
    :cond_4
    const/4 v8, -0x1

    .line 102780
    .restart local v3    # "inputPcmFrameSize":I
    new-array v15, v2, [Lcom/facebook/ads/redexgen/X/3k;

    .line 102781
    .restart local v4    # "availableAudioProcessors":[Lcom/facebook/ads/redexgen/X/3k;
    iget v11, v7, Lcom/facebook/ads/redexgen/X/qI;->A0G:I

    .line 102782
    .restart local v8    # "outputSampleRate":I
    const/4 v10, -0x1

    .line 102783
    .restart local v7    # "outputPcmFrameSize":I
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/oM;->A0E:Lcom/facebook/ads/redexgen/X/qQ;

    invoke-direct {v1, v7, v0}, Lcom/facebook/ads/redexgen/X/oM;->A0m(Lcom/facebook/ads/redexgen/X/qI;Lcom/facebook/ads/redexgen/X/qQ;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 102784
    const/4 v9, 0x1

    .line 102785
    .restart local v0    # "outputMode":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/qI;->A0W:Ljava/lang/String;

    .line 102786
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/qI;->A0R:Ljava/lang/String;

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/3J;->A03(Ljava/lang/String;Ljava/lang/String;)I

    move-result v13

    .line 102787
    .restart local v6    # "outputEncoding":I
    iget v0, v7, Lcom/facebook/ads/redexgen/X/qI;->A06:I

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/5C;->A01(I)I

    move-result v12

    .line 102788
    .restart local v9    # "outputChannelConfig":I
    .end local v3    # "inputPcmFrameSize":I
    .end local v4    # "availableAudioProcessors":[Lcom/facebook/ads/redexgen/X/3k;
    .end local v5
    .end local v6    # "outputEncoding":I
    .end local v7    # "outputPcmFrameSize":I
    .end local v8    # "outputSampleRate":I
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/qI;
    .local v0, "outputChannels":[I
    .restart local v9    # "outputChannelConfig":I
    .local v10, "outputPcmFrameSize":I
    .local v11, "outputSampleRate":I
    .local v12, "outputEncoding":I
    .local v14, "outputMode":I
    .local v15, "inputPcmFrameSize":I
    .local v16, "availableAudioProcessors":[Lcom/facebook/ads/redexgen/X/3k;
    :goto_3
    const/4 v4, 0x0

    const/4 v3, 0x7

    const/16 v0, 0x72

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/oM;->A0L(III)Ljava/lang/String;

    move-result-object v3

    if-eqz v13, :cond_d

    .line 102789
    if-eqz v12, :cond_c

    .line 102790
    if-eqz v14, :cond_6

    .line 102791
    .local v10, "bufferSize":I
    :goto_4
    iput-boolean v2, v1, Lcom/facebook/ads/redexgen/X/oM;->A0W:Z

    .line 102792
    new-instance v6, Lcom/facebook/ads/redexgen/X/9H;

    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/oM;->A0b:Z

    .end local v12    # "outputEncoding":I
    .local v22, "outputEncoding":I
    move/from16 v16, v0

    invoke-direct/range {v6 .. v16}, Lcom/facebook/ads/redexgen/X/9H;-><init>(Lcom/facebook/ads/redexgen/X/qI;IIIIIII[Lcom/facebook/ads/redexgen/X/3k;Z)V

    .line 102793
    .local v2, "pendingConfiguration":Lcom/facebook/ads/redexgen/X/9H;
    invoke-direct/range {p0 .. p0}, Lcom/facebook/ads/redexgen/X/oM;->A0h()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 102794
    iput-object v6, v1, Lcom/facebook/ads/redexgen/X/oM;->A0L:Lcom/facebook/ads/redexgen/X/9H;

    .line 102795
    :goto_5
    return-void

    .line 102796
    :cond_5
    iput-object v6, v1, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    goto :goto_5

    .line 102797
    :cond_6
    iget-object v3, v1, Lcom/facebook/ads/redexgen/X/oM;->A0m:Lcom/facebook/ads/redexgen/X/9F;

    .line 102798
    invoke-static {v11, v12, v13}, Lcom/facebook/ads/redexgen/X/oM;->A01(III)I

    move-result v17

    .line 102799
    const/4 v0, -0x1

    if-eq v10, v0, :cond_8

    move/from16 v20, v10

    :goto_6
    iget v0, v7, Lcom/facebook/ads/redexgen/X/qI;->A05:I

    .line 102800
    iget-boolean v4, v1, Lcom/facebook/ads/redexgen/X/oM;->A0r:Z

    if-eqz v4, :cond_7

    const-wide/high16 v23, 0x4020000000000000L    # 8.0

    .line 102801
    :goto_7
    move/from16 v21, v11

    .end local v9    # "outputChannelConfig":I
    .local v20, "outputChannelConfig":I
    .end local v10    # "bufferSize":I
    .end local v11    # "outputSampleRate":I
    .local v19, "outputSampleRate":I
    .local v21, "outputPcmFrameSize":I
    move-object/from16 v16, v3

    move/from16 v18, v13

    move/from16 v19, v9

    move/from16 v22, v0

    invoke-interface/range {v16 .. v24}, Lcom/facebook/ads/redexgen/X/9F;->A75(IIIIIID)I

    move-result v14

    goto :goto_4

    .line 102802
    :cond_7
    const-wide/high16 v23, 0x3ff0000000000000L    # 1.0

    goto :goto_7

    .line 102803
    :cond_8
    const/16 v20, 0x1

    goto :goto_6

    .line 102804
    .end local v0    # "outputChannels":[I
    .end local v6
    .end local v9
    :cond_9
    const/4 v9, 0x2

    sget-object v3, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v0, 0x2

    if-eq v3, v0, :cond_a

    :goto_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 102805
    .restart local v0    # "outputChannels":[I
    :cond_a
    sget-object v4, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const-string v3, "lAbqtU1Up8pAGeHbeXVy9OX5EzAUCGx9"

    const/4 v0, 0x5

    aput-object v3, v4, v0

    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/oM;->A0j:Lcom/facebook/ads/redexgen/X/8R;

    .line 102806
    invoke-virtual {v0, v7}, Lcom/facebook/ads/redexgen/X/8R;->A09(Lcom/facebook/ads/redexgen/X/qI;)Landroid/util/Pair;

    move-result-object v0

    .line 102807
    .local v5, "encodingAndChannelConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_e

    .line 102808
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 102809
    .restart local v6    # "outputEncoding":I
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    sget-object v3, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v3, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v0, 0x20

    if-eq v3, v0, :cond_b

    goto :goto_8

    :cond_b
    sget-object v4, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const-string v3, "Lw"

    const/4 v0, 0x1

    aput-object v3, v4, v0

    goto/16 :goto_3

    .line 102810
    .end local v2    # "pendingConfiguration":Lcom/facebook/ads/redexgen/X/9H;
    .end local v19    # "outputSampleRate":I
    .end local v20    # "outputChannelConfig":I
    .end local v21    # "outputPcmFrameSize":I
    .end local v22    # "outputEncoding":I
    .restart local v9    # "outputChannelConfig":I
    .local v10, "outputPcmFrameSize":I
    .restart local v11    # "outputSampleRate":I
    .restart local v12    # "outputEncoding":I
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x6b

    const/16 v1, 0x24

    const/16 v0, 0x38

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oM;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/8s;

    invoke-direct {v0, v1, v7}, Lcom/facebook/ads/redexgen/X/8s;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/qI;)V

    throw v0

    .line 102811
    :cond_d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x8f

    const/16 v1, 0x1e

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oM;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/8s;

    invoke-direct {v0, v1, v7}, Lcom/facebook/ads/redexgen/X/8s;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/qI;)V

    throw v0

    .line 102812
    .end local v9    # "outputChannelConfig":I
    .end local v10    # "outputPcmFrameSize":I
    .end local v11    # "outputSampleRate":I
    .end local v12    # "outputEncoding":I
    .end local v14    # "outputMode":I
    .end local v15    # "inputPcmFrameSize":I
    .end local v16    # "availableAudioProcessors":[Lcom/facebook/ads/redexgen/X/3k;
    .local v0, "outputMode":I
    .restart local v3    # "inputPcmFrameSize":I
    .restart local v4    # "availableAudioProcessors":[Lcom/facebook/ads/redexgen/X/3k;
    .restart local v5    # "encodingAndChannelConfig":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v7    # "outputPcmFrameSize":I
    .restart local v8    # "outputSampleRate":I
    .restart local p1    # null:Lcom/facebook/ads/redexgen/X/qI;
    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0xcf

    const/16 v1, 0x25

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oM;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/8s;

    invoke-direct {v0, v1, v7}, Lcom/facebook/ads/redexgen/X/8s;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/qI;)V

    throw v0
.end method

.method public final A5z()V
    .locals 1

    .line 102813
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0b:Z

    if-eqz v0, :cond_0

    .line 102814
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0b:Z

    .line 102815
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/oM;->flush()V

    .line 102816
    :cond_0
    return-void
.end method

.method public final A6M()V
    .locals 3

    .line 102817
    sget v2, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x15

    const/4 v1, 0x1

    if-lt v2, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 102818
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0T:Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A08(Z)V

    .line 102819
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0b:Z

    if-nez v0, :cond_0

    .line 102820
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/oM;->A0b:Z

    .line 102821
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/oM;->flush()V

    .line 102822
    :cond_0
    return-void

    .line 102823
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final A6T()V
    .locals 9

    .line 102824
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x19

    if-ge v1, v0, :cond_0

    .line 102825
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/oM;->flush()V

    .line 102826
    return-void

    .line 102827
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0o:Lcom/facebook/ads/redexgen/X/9M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9M;->A00()V

    .line 102828
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0n:Lcom/facebook/ads/redexgen/X/9M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9M;->A00()V

    .line 102829
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102830
    return-void

    .line 102831
    :cond_1
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0Q()V

    .line 102832
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0k:Lcom/facebook/ads/redexgen/X/95;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/95;->A0J()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102833
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 102834
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->flush()V

    .line 102835
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0k:Lcom/facebook/ads/redexgen/X/95;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/95;->A0E()V

    .line 102836
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/oM;->A0k:Lcom/facebook/ads/redexgen/X/95;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    iget v2, v0, Lcom/facebook/ads/redexgen/X/9H;->A04:I

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne v2, v0, :cond_3

    const/4 v5, 0x1

    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    iget v6, v0, Lcom/facebook/ads/redexgen/X/9H;->A03:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    iget v7, v0, Lcom/facebook/ads/redexgen/X/9H;->A05:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    iget v8, v0, Lcom/facebook/ads/redexgen/X/9H;->A00:I

    invoke-virtual/range {v3 .. v8}, Lcom/facebook/ads/redexgen/X/95;->A0I(Landroid/media/AudioTrack;ZIII)V

    .line 102837
    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/oM;->A0Y:Z

    .line 102838
    return-void

    .line 102839
    :cond_3
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public final A7f(Z)J
    .locals 5

    .line 102840
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0Y:Z

    if-eqz v0, :cond_1

    .line 102841
    .end local v0
    :cond_0
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0

    .line 102842
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0k:Lcom/facebook/ads/redexgen/X/95;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/95;->A0D(Z)J

    move-result-wide v3

    .line 102843
    .local v0, "positionUs":J
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A07()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/9H;->A08(J)J

    move-result-wide v0

    invoke-static {v3, v4, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 102844
    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/oM;->A08(J)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/ads/redexgen/X/oM;->A09(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final A8m()Lcom/facebook/ads/redexgen/X/px;
    .locals 1

    .line 102845
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0r:Z

    if-eqz v0, :cond_0

    .line 102846
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0G:Lcom/facebook/ads/redexgen/X/px;

    .line 102847
    :goto_0
    return-object v0

    .line 102848
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0I()Lcom/facebook/ads/redexgen/X/px;

    move-result-object v0

    goto :goto_0
.end method

.method public final A9e(Ljava/nio/ByteBuffer;JI)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/8t;,
            Lcom/facebook/ads/redexgen/X/8y;
        }
    .end annotation

    .line 102849
    move-object v6, p0

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/oM;->A0Q:Ljava/nio/ByteBuffer;

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/oM;->A0Q:Ljava/nio/ByteBuffer;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 102850
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/oM;->A0L:Lcom/facebook/ads/redexgen/X/9H;

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 102851
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 102852
    return v4

    .line 102853
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 102854
    :cond_2
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/oM;->A0L:Lcom/facebook/ads/redexgen/X/9H;

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9H;->A0E(Lcom/facebook/ads/redexgen/X/9H;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 102855
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0P()V

    .line 102856
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/oM;->A9o()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102857
    return v4

    .line 102858
    :cond_3
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/oM;->flush()V

    goto :goto_1

    .line 102859
    :cond_4
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/oM;->A0L:Lcom/facebook/ads/redexgen/X/9H;

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    .line 102860
    iput-object v2, v6, Lcom/facebook/ads/redexgen/X/oM;->A0L:Lcom/facebook/ads/redexgen/X/9H;

    .line 102861
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/oM;->A0l(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, v6, Lcom/facebook/ads/redexgen/X/oM;->A0f:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    .line 102862
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 102863
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->setOffloadEndOfStream()V

    .line 102864
    :cond_5
    iget-object v7, v6, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9H;->A07:Lcom/facebook/ads/redexgen/X/qI;

    iget v3, v0, Lcom/facebook/ads/redexgen/X/qI;->A08:I

    sget-object v8, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v8, v0

    const/4 v0, 0x3

    aget-object v8, v8, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v8, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1a

    sget-object v8, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const-string v1, "jzTmuhmcT6oYK5lhq8C6QOSyUXF7wdwQ"

    const/4 v0, 0x0

    aput-object v1, v8, v0

    const-string v1, "cWMrj79Gd0zdSeVIzQJ8siz7G3nSjdgD"

    const/4 v0, 0x3

    aput-object v1, v8, v0

    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/9H;->A07:Lcom/facebook/ads/redexgen/X/qI;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/qI;->A09:I

    invoke-virtual {v7, v3, v0}, Landroid/media/AudioTrack;->setOffloadDelayPadding(II)V

    .line 102865
    iput-boolean v5, v6, Lcom/facebook/ads/redexgen/X/oM;->A0V:Z

    .line 102866
    :cond_6
    :goto_1
    invoke-direct {v6, p2, p3}, Lcom/facebook/ads/redexgen/X/oM;->A0U(J)V

    .line 102867
    :cond_7
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0h()Z

    move-result v0

    if-nez v0, :cond_9

    .line 102868
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0g()Z

    move-result v0

    if-nez v0, :cond_9

    .line 102869
    return v4
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/8t; {:try_start_0 .. :try_end_0} :catch_0

    .line 102870
    :catch_0
    move-exception v1

    .line 102871
    .local v0, "e":Lcom/facebook/ads/redexgen/X/8t;
    iget-boolean v0, v1, Lcom/facebook/ads/redexgen/X/8t;->A02:Z

    if-nez v0, :cond_8

    .line 102872
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/oM;->A0n:Lcom/facebook/ads/redexgen/X/9M;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/9M;->A01(Ljava/lang/Exception;)V

    .line 102873
    return v4

    .line 102874
    :cond_8
    throw v1

    .line 102875
    .end local v0    # "e":Lcom/facebook/ads/redexgen/X/8t;
    :cond_9
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/oM;->A0n:Lcom/facebook/ads/redexgen/X/9M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9M;->A00()V

    .line 102876
    iget-boolean v3, v6, Lcom/facebook/ads/redexgen/X/oM;->A0Y:Z

    const-wide/16 v0, 0x0

    if-eqz v3, :cond_b

    .line 102877
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, v6, Lcom/facebook/ads/redexgen/X/oM;->A08:J

    .line 102878
    iput-boolean v4, v6, Lcom/facebook/ads/redexgen/X/oM;->A0Z:Z

    .line 102879
    iput-boolean v4, v6, Lcom/facebook/ads/redexgen/X/oM;->A0Y:Z

    .line 102880
    iget-boolean v0, v6, Lcom/facebook/ads/redexgen/X/oM;->A0r:Z

    if-eqz v0, :cond_a

    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x17

    if-lt v1, v0, :cond_a

    .line 102881
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/oM;->A0G:Lcom/facebook/ads/redexgen/X/px;

    invoke-direct {v6, v0}, Lcom/facebook/ads/redexgen/X/oM;->A0b(Lcom/facebook/ads/redexgen/X/px;)V

    .line 102882
    :cond_a
    invoke-direct {v6, p2, p3}, Lcom/facebook/ads/redexgen/X/oM;->A0U(J)V

    .line 102883
    iget-boolean v0, v6, Lcom/facebook/ads/redexgen/X/oM;->A0X:Z

    if-eqz v0, :cond_b

    .line 102884
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/oM;->AH0()V

    .line 102885
    :cond_b
    iget-object v3, v6, Lcom/facebook/ads/redexgen/X/oM;->A0k:Lcom/facebook/ads/redexgen/X/95;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A07()J

    move-result-wide v0

    invoke-virtual {v3, v0, v1}, Lcom/facebook/ads/redexgen/X/95;->A0N(J)Z

    move-result v0

    if-nez v0, :cond_c

    .line 102886
    return v4

    .line 102887
    :cond_c
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/oM;->A0Q:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_16

    .line 102888
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v0, :cond_d

    const/4 v0, 0x1

    :goto_2
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/3y;->A07(Z)V

    .line 102889
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_e

    .line 102890
    return v5

    .line 102891
    :cond_d
    const/4 v0, 0x0

    goto :goto_2

    .line 102892
    :cond_e
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9H;->A04:I

    if-eqz v0, :cond_f

    iget v0, v6, Lcom/facebook/ads/redexgen/X/oM;->A04:I

    if-nez v0, :cond_f

    .line 102893
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9H;->A03:I

    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/oM;->A02(ILjava/nio/ByteBuffer;)I

    move-result v0

    iput v0, v6, Lcom/facebook/ads/redexgen/X/oM;->A04:I

    .line 102894
    iget v0, v6, Lcom/facebook/ads/redexgen/X/oM;->A04:I

    if-nez v0, :cond_f

    .line 102895
    return v5

    .line 102896
    :cond_f
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/oM;->A0M:Lcom/facebook/ads/redexgen/X/9J;

    if-eqz v0, :cond_11

    .line 102897
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0f()Z

    move-result v0

    if-nez v0, :cond_10

    .line 102898
    return v4

    .line 102899
    :cond_10
    invoke-direct {v6, p2, p3}, Lcom/facebook/ads/redexgen/X/oM;->A0U(J)V

    .line 102900
    iput-object v2, v6, Lcom/facebook/ads/redexgen/X/oM;->A0M:Lcom/facebook/ads/redexgen/X/9J;

    .line 102901
    :cond_11
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/oM;->A08:J

    iget-object v9, v6, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    .line 102902
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A06()J

    move-result-wide v0

    iget-object v7, v6, Lcom/facebook/ads/redexgen/X/oM;->A0p:Lcom/facebook/ads/redexgen/X/9x;

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/9x;->A0C()J

    move-result-wide v7

    sub-long/2addr v0, v7

    .line 102903
    invoke-virtual {v9, v0, v1}, Lcom/facebook/ads/redexgen/X/9H;->A09(J)J

    move-result-wide v0

    add-long/2addr v2, v0

    .line 102904
    .local p0, "expectedPresentationTimeUs":J
    iget-boolean v0, v6, Lcom/facebook/ads/redexgen/X/oM;->A0Z:Z

    if-nez v0, :cond_13

    sub-long v0, v2, p2

    .line 102905
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    const-wide/32 v7, 0x30d40

    cmp-long v0, v9, v7

    if-lez v0, :cond_13

    .line 102906
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/oM;->A0I:Lcom/facebook/ads/redexgen/X/8v;

    if-eqz v0, :cond_12

    .line 102907
    iget-object v1, v6, Lcom/facebook/ads/redexgen/X/oM;->A0I:Lcom/facebook/ads/redexgen/X/8v;

    new-instance v0, Lcom/facebook/ads/redexgen/X/8x;

    invoke-direct {v0, p2, p3, v2, v3}, Lcom/facebook/ads/redexgen/X/8x;-><init>(JJ)V

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/8v;->AD6(Ljava/lang/Exception;)V

    .line 102908
    :cond_12
    iput-boolean v5, v6, Lcom/facebook/ads/redexgen/X/oM;->A0Z:Z

    .line 102909
    :cond_13
    iget-boolean v0, v6, Lcom/facebook/ads/redexgen/X/oM;->A0Z:Z

    if-eqz v0, :cond_15

    .line 102910
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0f()Z

    move-result v0

    if-nez v0, :cond_14

    .line 102911
    return v4

    .line 102912
    :cond_14
    sub-long v7, p2, v2

    .line 102913
    .local p2, "adjustmentUs":J
    iget-wide v0, v6, Lcom/facebook/ads/redexgen/X/oM;->A08:J

    add-long/2addr v0, v7

    iput-wide v0, v6, Lcom/facebook/ads/redexgen/X/oM;->A08:J

    .line 102914
    iput-boolean v4, v6, Lcom/facebook/ads/redexgen/X/oM;->A0Z:Z

    .line 102915
    invoke-direct {v6, p2, p3}, Lcom/facebook/ads/redexgen/X/oM;->A0U(J)V

    .line 102916
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/oM;->A0I:Lcom/facebook/ads/redexgen/X/8v;

    if-eqz v0, :cond_15

    const-wide/16 v1, 0x0

    cmp-long v0, v7, v1

    if-eqz v0, :cond_15

    .line 102917
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/oM;->A0I:Lcom/facebook/ads/redexgen/X/8v;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/8v;->AFO()V

    .line 102918
    .end local p2    # "adjustmentUs":J
    :cond_15
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/9H;->A04:I

    if-nez v0, :cond_17

    .line 102919
    iget-wide v2, v6, Lcom/facebook/ads/redexgen/X/oM;->A0A:J

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v2, v0

    iput-wide v2, v6, Lcom/facebook/ads/redexgen/X/oM;->A0A:J

    .line 102920
    :goto_3
    iput-object p1, v6, Lcom/facebook/ads/redexgen/X/oM;->A0Q:Ljava/nio/ByteBuffer;

    .line 102921
    iput p4, v6, Lcom/facebook/ads/redexgen/X/oM;->A05:I

    .line 102922
    .end local p0    # "expectedPresentationTimeUs":J
    :cond_16
    invoke-direct {v6, p2, p3}, Lcom/facebook/ads/redexgen/X/oM;->A0V(J)V

    .line 102923
    iget-object v0, v6, Lcom/facebook/ads/redexgen/X/oM;->A0Q:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_18

    .line 102924
    const/4 v0, 0x0

    iput-object v0, v6, Lcom/facebook/ads/redexgen/X/oM;->A0Q:Ljava/nio/ByteBuffer;

    .line 102925
    const/4 v0, 0x0

    iput v0, v6, Lcom/facebook/ads/redexgen/X/oM;->A05:I

    .line 102926
    const/4 v0, 0x1

    return v0

    .line 102927
    :cond_17
    iget-wide v4, v6, Lcom/facebook/ads/redexgen/X/oM;->A09:J

    iget v0, v6, Lcom/facebook/ads/redexgen/X/oM;->A04:I

    int-to-long v2, v0

    int-to-long v0, p4

    mul-long/2addr v2, v0

    add-long/2addr v4, v2

    iput-wide v4, v6, Lcom/facebook/ads/redexgen/X/oM;->A09:J

    goto :goto_3

    .line 102928
    :cond_18
    iget-object v2, v6, Lcom/facebook/ads/redexgen/X/oM;->A0k:Lcom/facebook/ads/redexgen/X/95;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A07()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/95;->A0M(J)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 102929
    const/4 v2, 0x7

    const/16 v1, 0x10

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oM;->A0L(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xb2

    const/16 v1, 0x1d

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/oM;->A0L(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/4g;->A07(Ljava/lang/String;Ljava/lang/String;)V

    .line 102930
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/oM;->flush()V

    .line 102931
    const/4 v0, 0x1

    return v0

    .line 102932
    :cond_19
    const/4 v0, 0x0

    return v0

    .line 102933
    :cond_1a
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A9h()V
    .locals 1

    .line 102934
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0Z:Z

    .line 102935
    return-void
.end method

.method public final A9o()Z
    .locals 3

    .line 102936
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/oM;->A0k:Lcom/facebook/ads/redexgen/X/95;

    .line 102937
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A07()J

    move-result-wide v0

    invoke-virtual {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/95;->A0L(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 102938
    :goto_0
    return v0

    .line 102939
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AAP()Z
    .locals 1

    .line 102940
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0U:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/oM;->A9o()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AH0()V
    .locals 1

    .line 102941
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0X:Z

    .line 102942
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102943
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0k:Lcom/facebook/ads/redexgen/X/95;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/95;->A0F()V

    .line 102944
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 102945
    :cond_0
    return-void
.end method

.method public final AH2()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/ads/redexgen/X/8y;
        }
    .end annotation

    .line 102946
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0U:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0h()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102947
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0P()V

    .line 102948
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0U:Z

    .line 102949
    :cond_0
    return-void
.end method

.method public final AJG(Lcom/facebook/ads/redexgen/X/qQ;)V
    .locals 1

    .line 102950
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0E:Lcom/facebook/ads/redexgen/X/qQ;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/qQ;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102951
    return-void

    .line 102952
    :cond_0
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/oM;->A0E:Lcom/facebook/ads/redexgen/X/qQ;

    .line 102953
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0b:Z

    if-eqz v0, :cond_1

    .line 102954
    return-void

    .line 102955
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/oM;->flush()V

    .line 102956
    return-void
.end method

.method public final AJH(I)V
    .locals 1

    .line 102957
    iget v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A01:I

    if-eq v0, p1, :cond_0

    .line 102958
    iput p1, p0, Lcom/facebook/ads/redexgen/X/oM;->A01:I

    .line 102959
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0T:Z

    .line 102960
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/oM;->flush()V

    .line 102961
    :cond_0
    return-void

    .line 102962
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AJI(Lcom/facebook/ads/redexgen/X/21;)V
    .locals 6

    .line 102963
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0F:Lcom/facebook/ads/redexgen/X/21;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/21;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102964
    return-void

    .line 102965
    :cond_0
    iget v5, p1, Lcom/facebook/ads/redexgen/X/21;->A01:I

    .line 102966
    .local v0, "effectId":I
    iget v4, p1, Lcom/facebook/ads/redexgen/X/21;->A00:F

    .line 102967
    .local v1, "sendLevel":F
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    if-eqz v0, :cond_3

    .line 102968
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0F:Lcom/facebook/ads/redexgen/X/21;

    iget v0, v0, Lcom/facebook/ads/redexgen/X/21;->A01:I

    if-eq v0, v5, :cond_2

    .line 102969
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    sget-object v1, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const-string v1, "ejzMDVkCKjmiTtIYDMlHFxA2dL6L7Th4"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "3op87oKeQBz5MvPCbX5N1e1cWqib6LOP"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3, v5}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    .line 102970
    :cond_2
    if-eqz v5, :cond_3

    .line 102971
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    invoke-virtual {v0, v4}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    .line 102972
    :cond_3
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/oM;->A0F:Lcom/facebook/ads/redexgen/X/21;

    .line 102973
    return-void
.end method

.method public final AJQ(Z)V
    .locals 0
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "NEW_METHOD"
        }
        value = "D45157249: Retry Audio Track Init failure with less Audio track allocation sizes"
    .end annotation

    .line 102974
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/oM;->A0S:Z

    .line 102975
    return-void
.end method

.method public final AJV(Lcom/facebook/ads/redexgen/X/8v;)V
    .locals 0

    .line 102976
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/oM;->A0I:Lcom/facebook/ads/redexgen/X/8v;

    .line 102977
    return-void
.end method

.method public final AJd(Lcom/facebook/ads/redexgen/X/px;)V
    .locals 5

    .line 102978
    nop

    iget v0, p1, Lcom/facebook/ads/redexgen/X/px;->A01:F

    .line 102979
    const v3, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v0, v3, v2}, Lcom/facebook/ads/redexgen/X/5C;->A00(FFF)F

    move-result v1

    iget v0, p1, Lcom/facebook/ads/redexgen/X/px;->A00:F

    .line 102980
    invoke-static {v0, v3, v2}, Lcom/facebook/ads/redexgen/X/5C;->A00(FFF)F

    move-result v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/px;

    invoke-direct {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/px;-><init>(FF)V

    .line 102981
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0r:Z

    if-eqz v0, :cond_0

    sget v4, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    sget-object v2, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 102982
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0p()Z

    move-result v0

    .line 102983
    invoke-direct {p0, v3, v0}, Lcom/facebook/ads/redexgen/X/oM;->A0c(Lcom/facebook/ads/redexgen/X/px;Z)V

    goto :goto_0

    .line 102984
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const-string v1, "mNkMATimN2JlCwGmoqKrFKrIOPJhoNaC"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "5L3Fdp27ixuu2nNAlcGmWXwucnCjA2b5"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/16 v0, 0x17

    if-lt v4, v0, :cond_0

    .line 102985
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/oM;->A0b(Lcom/facebook/ads/redexgen/X/px;)V

    .line 102986
    :goto_0
    return-void
.end method

.method public final AJg(Lcom/facebook/ads/redexgen/X/8O;)V
    .locals 0

    .line 102987
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/oM;->A0H:Lcom/facebook/ads/redexgen/X/8O;

    .line 102988
    return-void
.end method

.method public final AJi(Landroid/media/AudioDeviceInfo;)V
    .locals 3

    .line 102989
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0J:Lcom/facebook/ads/redexgen/X/9E;

    sget-object v2, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/9E;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/9E;-><init>(Landroid/media/AudioDeviceInfo;)V

    goto :goto_0

    .line 102990
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const-string v1, "fdceU7wc4F7eltehFDuXboaWNHZsjBbo"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "ndF9ePFUZlaV1XmuWN8y5PTJytJgMa2t"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    if-eqz v0, :cond_2

    .line 102991
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0J:Lcom/facebook/ads/redexgen/X/9E;

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/9C;->A00(Landroid/media/AudioTrack;Lcom/facebook/ads/redexgen/X/9E;)V

    .line 102992
    :cond_2
    return-void
.end method

.method public final AJo(Z)V
    .locals 1

    .line 102993
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0I()Lcom/facebook/ads/redexgen/X/px;

    move-result-object v0

    .line 102994
    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/oM;->A0c(Lcom/facebook/ads/redexgen/X/px;Z)V

    .line 102995
    return-void
.end method

.method public final AKN(Lcom/facebook/ads/redexgen/X/qI;)Z
    .locals 1

    .line 102996
    invoke-virtual {p0, p1}, Lcom/facebook/ads/redexgen/X/oM;->A0o(Lcom/facebook/ads/redexgen/X/qI;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AKP(II)Z
    .locals 3
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        type = {
            "TEMPORARY"
        }
        value = "Old API that can be removed when we move to MediaCodecRenderer2"
    .end annotation

    .line 102997
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/5C;->A15(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 102998
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x15

    if-lt v1, v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 102999
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0j:Lcom/facebook/ads/redexgen/X/8R;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0j:Lcom/facebook/ads/redexgen/X/8R;

    .line 103000
    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/8R;->A0A(I)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0j:Lcom/facebook/ads/redexgen/X/8R;

    .line 103001
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8R;->A08()I

    move-result v0

    if-gt p1, v0, :cond_4

    .line 103002
    :cond_3
    :goto_1
    return v2

    .line 103003
    :cond_4
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public final flush()V
    .locals 5

    .line 103004
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0h()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 103005
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0Q()V

    .line 103006
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0k:Lcom/facebook/ads/redexgen/X/95;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/95;->A0J()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103007
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 103008
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/oM;->A0l(Landroid/media/AudioTrack;)Z

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x6

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const-string v1, "i9Rinuw5ztOihCbMK36CN4CjOXT3DfRT"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    .line 103009
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/oM;->A0O:Lcom/facebook/ads/redexgen/X/9P;

    sget-object v1, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const-string v1, "H3Tn5qbfAuT8Q6Ln8VWJEFxZf5lTeqqt"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/3y;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/ads/redexgen/X/9P;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/9P;->A01(Landroid/media/AudioTrack;)V

    .line 103010
    :cond_3
    sget v1, Lcom/facebook/ads/redexgen/X/5C;->A02:I

    const/16 v0, 0x15

    if-ge v1, v0, :cond_4

    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0T:Z

    if-nez v0, :cond_4

    .line 103011
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A01:I

    .line 103012
    :cond_4
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9H;->A0B()Lcom/facebook/ads/redexgen/X/8r;

    move-result-object v4

    .line 103013
    .local v0, "oldAudioTrackConfig":Lcom/facebook/ads/redexgen/X/8r;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0L:Lcom/facebook/ads/redexgen/X/9H;

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    .line 103014
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0L:Lcom/facebook/ads/redexgen/X/9H;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0K:Lcom/facebook/ads/redexgen/X/9H;

    .line 103015
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/oM;->A0L:Lcom/facebook/ads/redexgen/X/9H;

    .line 103016
    :cond_5
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0k:Lcom/facebook/ads/redexgen/X/95;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/95;->A0E()V

    .line 103017
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/oM;->A0h:Lcom/facebook/ads/redexgen/X/48;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0I:Lcom/facebook/ads/redexgen/X/8v;

    invoke-direct {p0, v2, v1, v0, v4}, Lcom/facebook/ads/redexgen/X/oM;->A0Z(Landroid/media/AudioTrack;Lcom/facebook/ads/redexgen/X/48;Lcom/facebook/ads/redexgen/X/8v;Lcom/facebook/ads/redexgen/X/8r;)V

    .line 103018
    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    .line 103019
    .end local v0    # "oldAudioTrackConfig":Lcom/facebook/ads/redexgen/X/8r;
    :cond_6
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0o:Lcom/facebook/ads/redexgen/X/9M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9M;->A00()V

    .line 103020
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0n:Lcom/facebook/ads/redexgen/X/9M;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/9M;->A00()V

    .line 103021
    return-void
.end method

.method public final pause()V
    .locals 1

    .line 103022
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0X:Z

    .line 103023
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0k:Lcom/facebook/ads/redexgen/X/95;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/95;->A0K()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103024
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A0D:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 103025
    :cond_0
    return-void
.end method

.method public final setVolume(F)V
    .locals 3

    .line 103026
    iget v0, p0, Lcom/facebook/ads/redexgen/X/oM;->A00:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 103027
    iput p1, p0, Lcom/facebook/ads/redexgen/X/oM;->A00:F

    sget-object v2, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x3

    aget-object v2, v2, v0

    const/16 v0, 0x1f

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    .line 103028
    sget-object v2, Lcom/facebook/ads/redexgen/X/oM;->A0z:[Ljava/lang/String;

    const-string v1, "E1Te023wTVVNappUuQixsG3bphOCE2I8"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/oM;->A0R()V

    .line 103029
    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
