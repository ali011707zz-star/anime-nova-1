.class public final Lcom/google/ads/interactivemedia/v3/internal/zzyn;
.super Lcom/google/ads/interactivemedia/v3/internal/zzvp;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"


# static fields
.field private static final zza:Lcom/google/ads/interactivemedia/v3/internal/zzvq;


# instance fields
.field private final zzb:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzyn;->zzb(I)Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    move-result-object v0

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzyn;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzvp;-><init>()V

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyn;->zzb:I

    return-void
.end method

.method public static zza(I)Lcom/google/ads/interactivemedia/v3/internal/zzvq;
    .locals 1

    .line 0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    sget-object p0, Lcom/google/ads/interactivemedia/v3/internal/zzyn;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzyn;->zzb(I)Lcom/google/ads/interactivemedia/v3/internal/zzvq;

    move-result-object p0

    return-object p0
.end method

.method private static zzb(I)Lcom/google/ads/interactivemedia/v3/internal/zzvq;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzyn;

    invoke-direct {v0, p0}, Lcom/google/ads/interactivemedia/v3/internal/zzyn;-><init>(I)V

    new-instance p0, Lcom/google/ads/interactivemedia/v3/internal/zzym;

    invoke-direct {p0, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzym;-><init>(Lcom/google/ads/interactivemedia/v3/internal/zzyn;)V

    return-object p0
.end method


# virtual methods
.method public final bridge synthetic read(Lcom/google/ads/interactivemedia/v3/internal/zzabb;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzr()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzi()V

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzabc;->zza(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/ads/interactivemedia/v3/internal/zzvk;

    .line 4
    invoke-virtual {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzabb;->zzp()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x21

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    add-int/2addr v2, v3

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Expecting number, got: "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; at path "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzvk;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1
    :cond_1
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzyn;->zzb:I

    .line 2
    invoke-static {v0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzvn;->zza(ILcom/google/ads/interactivemedia/v3/internal/zzabb;)Ljava/lang/Number;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic write(Lcom/google/ads/interactivemedia/v3/internal/zzabd;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Ljava/lang/Number;

    .line 2
    invoke-virtual {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzabd;->zzl(Ljava/lang/Number;)Lcom/google/ads/interactivemedia/v3/internal/zzabd;

    return-void
.end method
