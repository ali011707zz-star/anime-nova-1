.class public final Lcom/google/ads/interactivemedia/v3/internal/zzafp;
.super Lcom/google/ads/interactivemedia/v3/internal/zzacs;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzady;


# static fields
.field private static final zzh:Lcom/google/ads/interactivemedia/v3/internal/zzafp;


# instance fields
.field private zzb:Ljava/lang/String;

.field private zzd:Ljava/lang/String;

.field private zze:Ljava/lang/String;

.field private zzf:I

.field private zzg:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzafp;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzafp;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzafp;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zzafp;

    const-class v1, Lcom/google/ads/interactivemedia/v3/internal/zzafp;

    invoke-static {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzaD(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzacs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzafp;->zzb:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzafp;->zzd:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzafp;->zze:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzafp;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static zza()Lcom/google/ads/interactivemedia/v3/internal/zzafo;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzafp;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zzafp;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzax()Lcom/google/ads/interactivemedia/v3/internal/zzaco;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzafo;

    return-object v0
.end method

.method static synthetic zze()Lcom/google/ads/interactivemedia/v3/internal/zzafp;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzafp;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zzafp;

    return-object v0
.end method


# virtual methods
.method final synthetic zzb(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzafp;->zzb:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzc(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzafp;->zzd:Ljava/lang/String;

    return-void
.end method

.method final synthetic zzd(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzafp;->zze:Ljava/lang/String;

    return-void
.end method

.method protected final zzm(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x5

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 p2, 0x0

    if-eq p1, v0, :cond_1

    if-ne p1, p3, :cond_0

    .line 1
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/zzafp;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zzafp;

    return-object p1

    .line 4
    :cond_0
    throw p2

    .line 2
    :cond_1
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzafo;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzafo;-><init>([B)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzafp;

    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzafp;-><init>()V

    return-object p1

    .line 1
    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const-string/jumbo p3, "zzb"

    const/4 v3, 0x0

    aput-object p3, p1, v3

    const-string/jumbo p3, "zzd"

    aput-object p3, p1, p2

    const-string/jumbo p2, "zze"

    aput-object p2, p1, v2

    const-string/jumbo p2, "zzf"

    aput-object p2, p1, v1

    const-string/jumbo p2, "zzg"

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/ads/interactivemedia/v3/internal/zzafp;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zzafp;

    const-string p3, "\u0004\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u0208\u0002\u0208\u0003\u0208\u0004\u000c\u0005\u0208"

    .line 2
    invoke-static {p2, p3, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzaE(Lcom/google/ads/interactivemedia/v3/internal/zzadx;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1
    :cond_4
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
