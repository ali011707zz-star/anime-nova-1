.class public final Lcom/facebook/ads/redexgen/X/nR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Em;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/1a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# static fields
.field public static A0B:[Ljava/lang/String;


# instance fields
.field public final A00:F

.field public final A01:F

.field public final A02:I

.field public final A03:I

.field public final A04:I

.field public final A05:I

.field public final A06:I

.field public final A07:J

.field public final A08:Lcom/facebook/ads/redexgen/X/45;

.field public final A09:Lcom/facebook/ads/redexgen/X/F6;
    .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
        value = "This is no longer set in the constructor"
    .end annotation
.end field

.field public final A0A:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 3297
    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "ziZaTeBfSFNnIBcgtlZExnB4uOVj2q5B"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "5IZt5NWgPCitKNTqtiA"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "aLHVXVzU6ljMUMq9dZgrDfQ8JzHl8MF"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "mvLcqO7QF6VGSUKAdCZC8bhhp8aLucng"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "FQUZNhR4lN6thgMMBkcdaTgoY6ZzypcM"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "72R8UBsha86AOqtb805OpiOBiH7oe8El"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "AjNBccUrYW9zDFgtuo7TyJwkSvkBJU7y"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "GkSBWsvGG5dBFRJxqtw9GV4lDtiTWOM"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/nR;->A0B:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 100639
    const/16 v2, 0x61a8

    const/high16 v1, 0x3f400000    # 0.75f

    const/16 v0, 0x2710

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/facebook/ads/redexgen/X/nR;-><init>(IIIF)V

    .line 100640
    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 13

    .line 100641
    const-wide/16 v10, 0x7d0

    sget-object v12, Lcom/facebook/ads/redexgen/X/45;->A00:Lcom/facebook/ads/redexgen/X/45;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/16 v6, 0x4ff

    const/16 v7, 0x2cf

    const/high16 v9, 0x3f400000    # 0.75f

    move-object v0, p0

    move/from16 v8, p4

    move/from16 v5, p3

    move v4, p2

    move v3, p1

    invoke-direct/range {v0 .. v12}, Lcom/facebook/ads/redexgen/X/nR;-><init>(Lcom/facebook/ads/redexgen/X/F6;IIIIIIFFJLcom/facebook/ads/redexgen/X/45;)V

    .line 100642
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/F6;)V
    .locals 13

    .line 100643
    const-wide/16 v10, 0x7d0

    sget-object v12, Lcom/facebook/ads/redexgen/X/45;->A00:Lcom/facebook/ads/redexgen/X/45;

    const/4 v2, -0x1

    const/16 v3, 0x2710

    const/16 v4, 0x61a8

    const/16 v5, 0x61a8

    const/16 v6, 0x4ff

    const/16 v7, 0x2cf

    const/high16 v8, 0x3f400000    # 0.75f

    const/high16 v9, 0x3f400000    # 0.75f

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v12}, Lcom/facebook/ads/redexgen/X/nR;-><init>(Lcom/facebook/ads/redexgen/X/F6;IIIIIIFFJLcom/facebook/ads/redexgen/X/45;)V

    .line 100644
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/F6;IIIIIIFFJLcom/facebook/ads/redexgen/X/45;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/F6;
        .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
            value = "No longer set through factory"
        .end annotation
    .end param
    .param p2    # I
        .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
            value = "Non standard variable; used in oculus"
        .end annotation
    .end param
    .param p3    # I
        .annotation runtime Lcom/facebook/video/heroplayer/exocustom/MetaExoPlayerCustomization;
            value = "Removed from upstream"
        .end annotation
    .end param

    .line 100645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100646
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/nR;->A09:Lcom/facebook/ads/redexgen/X/F6;

    .line 100647
    iput p2, p0, Lcom/facebook/ads/redexgen/X/nR;->A0A:I

    .line 100648
    iput p3, p0, Lcom/facebook/ads/redexgen/X/nR;->A05:I

    .line 100649
    iput p4, p0, Lcom/facebook/ads/redexgen/X/nR;->A02:I

    .line 100650
    iput p5, p0, Lcom/facebook/ads/redexgen/X/nR;->A06:I

    .line 100651
    iput p6, p0, Lcom/facebook/ads/redexgen/X/nR;->A04:I

    .line 100652
    iput p7, p0, Lcom/facebook/ads/redexgen/X/nR;->A03:I

    .line 100653
    iput p8, p0, Lcom/facebook/ads/redexgen/X/nR;->A00:F

    .line 100654
    iput p9, p0, Lcom/facebook/ads/redexgen/X/nR;->A01:F

    .line 100655
    iput-wide p10, p0, Lcom/facebook/ads/redexgen/X/nR;->A07:J

    .line 100656
    iput-object p12, p0, Lcom/facebook/ads/redexgen/X/nR;->A08:Lcom/facebook/ads/redexgen/X/45;

    .line 100657
    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/pg;[IILcom/facebook/ads/redexgen/X/F6;Lcom/facebook/ads/redexgen/X/BP;)Lcom/facebook/ads/redexgen/X/1a;
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/pg;",
            "[II",
            "Lcom/facebook/ads/redexgen/X/F6;",
            "Lcom/facebook/ads/redexgen/X/BP<",
            "Lcom/facebook/ads/redexgen/X/EU;",
            ">;)",
            "Lcom/facebook/ads/redexgen/X/1a;"
        }
    .end annotation

    .local v29, "adaptationCheckpoints":Lcom/facebook/ads/redexgen/X/BP;, "Lcom/google/common/collect/ImmutableList<Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;>;"
    move-object/from16 v14, p0

    .line 100658
    new-instance v15, Lcom/facebook/ads/redexgen/X/1a;

    iget v13, v14, Lcom/facebook/ads/redexgen/X/nR;->A0A:I

    iget v0, v14, Lcom/facebook/ads/redexgen/X/nR;->A05:I

    int-to-long v8, v0

    iget v0, v14, Lcom/facebook/ads/redexgen/X/nR;->A02:I

    int-to-long v6, v0

    iget v0, v14, Lcom/facebook/ads/redexgen/X/nR;->A06:I

    int-to-long v4, v0

    iget v12, v14, Lcom/facebook/ads/redexgen/X/nR;->A04:I

    iget v11, v14, Lcom/facebook/ads/redexgen/X/nR;->A03:I

    iget v10, v14, Lcom/facebook/ads/redexgen/X/nR;->A00:F

    move-object v15, v15

    iget v3, v14, Lcom/facebook/ads/redexgen/X/nR;->A01:F

    iget-wide v1, v14, Lcom/facebook/ads/redexgen/X/nR;->A07:J

    iget-object v0, v14, Lcom/facebook/ads/redexgen/X/nR;->A08:Lcom/facebook/ads/redexgen/X/45;

    move-object/from16 v33, p5

    move-object/from16 v19, p4

    move/from16 v18, p3

    move-object/from16 v17, p2

    move-object/from16 v16, p1

    move/from16 v28, v11

    move/from16 v29, v10

    move/from16 v30, v3

    move-wide/from16 v31, v1

    move-object/from16 v34, v0

    move-wide/from16 v25, v4

    move/from16 v27, v12

    move-wide/from16 v21, v8

    move-wide/from16 v23, v6

    move/from16 v20, v13

    invoke-direct/range {v15 .. v34}, Lcom/facebook/ads/redexgen/X/1a;-><init>(Lcom/facebook/ads/redexgen/X/pg;[IILcom/facebook/ads/redexgen/X/F6;IJJJIIFFJLjava/util/List;Lcom/facebook/ads/redexgen/X/45;)V

    return-object v15
.end method


# virtual methods
.method public final A5b([Lcom/facebook/ads/redexgen/X/El;Lcom/facebook/ads/redexgen/X/F6;Lcom/facebook/ads/redexgen/X/no;Lcom/facebook/ads/androidx/media3/common/Timeline;)[Lcom/facebook/ads/redexgen/X/nE;
    .locals 13

    .line 100659
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/1a;->A01([Lcom/facebook/ads/redexgen/X/El;)Lcom/facebook/ads/redexgen/X/BP;

    move-result-object v5

    .line 100660
    .local v1, "adaptationCheckpoints":Lcom/facebook/ads/redexgen/X/BP;, "Lcom/google/common/collect/ImmutableList<Lcom/google/common/collect/ImmutableList<Lcom/facebook/ads/androidx/media3/exoplayer/trackselection/AdaptiveTrackSelection$AdaptationCheckpoint;>;>;"
    array-length v0, p1

    new-array v4, v0, [Lcom/facebook/ads/redexgen/X/nE;

    .line 100661
    .local v2, "selections":[Lcom/facebook/ads/redexgen/X/nE;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v0, p1

    if-ge v3, v0, :cond_4

    .line 100662
    aget-object v7, p1, v3

    .line 100663
    .local v4, "definition":Lcom/facebook/ads/redexgen/X/El;
    if-eqz v7, :cond_0

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/El;->A02:[I

    array-length v0, v0

    if-nez v0, :cond_1

    .line 100664
    .end local v4    # "definition":Lcom/facebook/ads/redexgen/X/El;
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 100665
    :cond_1
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/El;->A02:[I

    array-length v6, v0

    sget-object v1, Lcom/facebook/ads/redexgen/X/nR;->A0B:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/nR;->A0B:[Ljava/lang/String;

    const-string v1, "4JDRhnBkti3"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x1

    if-ne v6, v0, :cond_3

    .line 100666
    iget-object v6, v7, Lcom/facebook/ads/redexgen/X/El;->A01:Lcom/facebook/ads/redexgen/X/pg;

    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/El;->A02:[I

    const/4 v0, 0x0

    aget v2, v1, v0

    iget v1, v7, Lcom/facebook/ads/redexgen/X/El;->A00:I

    new-instance v0, Lcom/facebook/ads/redexgen/X/1Z;

    invoke-direct {v0, v6, v2, v1}, Lcom/facebook/ads/redexgen/X/1Z;-><init>(Lcom/facebook/ads/redexgen/X/pg;II)V

    .line 100667
    :goto_2
    aput-object v0, v4, v3

    goto :goto_1

    :cond_3
    iget-object v8, v7, Lcom/facebook/ads/redexgen/X/El;->A01:Lcom/facebook/ads/redexgen/X/pg;

    iget-object v9, v7, Lcom/facebook/ads/redexgen/X/El;->A02:[I

    iget v10, v7, Lcom/facebook/ads/redexgen/X/El;->A00:I

    .line 100668
    invoke-virtual {v5, v3}, Lcom/facebook/ads/redexgen/X/BP;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/facebook/ads/redexgen/X/BP;

    .line 100669
    move-object v7, p0

    move-object v11, p2

    invoke-direct/range {v7 .. v12}, Lcom/facebook/ads/redexgen/X/nR;->A00(Lcom/facebook/ads/redexgen/X/pg;[IILcom/facebook/ads/redexgen/X/F6;Lcom/facebook/ads/redexgen/X/BP;)Lcom/facebook/ads/redexgen/X/1a;

    move-result-object v0

    goto :goto_2

    .line 100670
    .end local v3    # "i":I
    :cond_4
    return-object v4
.end method
