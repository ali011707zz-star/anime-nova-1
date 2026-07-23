.class public final Lcom/google/ads/interactivemedia/v3/internal/zzafu;
.super Lcom/google/ads/interactivemedia/v3/internal/zzacs;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzady;


# static fields
.field private static final zzl:Lcom/google/ads/interactivemedia/v3/internal/zzafu;


# instance fields
.field private zzb:I

.field private zzd:I

.field private zze:Ljava/lang/Object;

.field private zzf:I

.field private zzg:I

.field private zzh:Lcom/google/ads/interactivemedia/v3/internal/zzafy;

.field private zzi:I

.field private zzj:I

.field private zzk:Lcom/google/ads/interactivemedia/v3/internal/zzafr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzafu;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzafu;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzafu;->zzl:Lcom/google/ads/interactivemedia/v3/internal/zzafu;

    const-class v1, Lcom/google/ads/interactivemedia/v3/internal/zzafu;

    invoke-static {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzaD(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzacs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzafu;->zzd:I

    return-void
.end method

.method public static zza()Lcom/google/ads/interactivemedia/v3/internal/zzaft;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzafu;->zzl:Lcom/google/ads/interactivemedia/v3/internal/zzafu;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzax()Lcom/google/ads/interactivemedia/v3/internal/zzaco;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzaft;

    return-object v0
.end method

.method static synthetic zzf()Lcom/google/ads/interactivemedia/v3/internal/zzafu;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzafu;->zzl:Lcom/google/ads/interactivemedia/v3/internal/zzafu;

    return-object v0
.end method


# virtual methods
.method final synthetic zzb(Lcom/google/ads/interactivemedia/v3/internal/zzafp;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzafu;->zze:Ljava/lang/Object;

    const/4 p1, 0x7

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzafu;->zzd:I

    return-void
.end method

.method final synthetic zzc(I)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzafu;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzafu;->zzb:I

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzafu;->zzf:I

    return-void
.end method

.method final synthetic zzd(Lcom/google/ads/interactivemedia/v3/internal/zzafy;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzafu;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zzafy;

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzafu;->zzb:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzafu;->zzb:I

    return-void
.end method

.method final synthetic zze(I)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzafu;->zzb:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzafu;->zzb:I

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzafu;->zzi:I

    return-void
.end method

.method protected final zzm(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

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
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/zzafu;->zzl:Lcom/google/ads/interactivemedia/v3/internal/zzafu;

    return-object p1

    .line 4
    :cond_0
    throw p2

    .line 2
    :cond_1
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzaft;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzaft;-><init>([B)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzafu;

    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzafu;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0xa

    .line 1
    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v3, "zze"

    const/4 v4, 0x0

    aput-object v3, p1, v4

    const-string/jumbo v3, "zzd"

    aput-object v3, p1, p2

    const-string/jumbo p2, "zzb"

    aput-object p2, p1, v2

    const-class p2, Lcom/google/ads/interactivemedia/v3/internal/zzafp;

    aput-object p2, p1, v1

    const-string/jumbo p2, "zzf"

    aput-object p2, p1, v0

    const-string/jumbo p2, "zzg"

    aput-object p2, p1, p3

    const-string/jumbo p2, "zzh"

    const/4 p3, 0x6

    aput-object p2, p1, p3

    const-string/jumbo p2, "zzi"

    const/4 p3, 0x7

    aput-object p2, p1, p3

    const-string/jumbo p2, "zzj"

    const/16 p3, 0x8

    aput-object p2, p1, p3

    const-string/jumbo p2, "zzk"

    const/16 p3, 0x9

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/ads/interactivemedia/v3/internal/zzafu;->zzl:Lcom/google/ads/interactivemedia/v3/internal/zzafu;

    const-string p3, "\u0004\u0007\u0001\u0001\u0007\r\u0007\u0000\u0000\u0000\u0007<\u0000\u0008\u1004\u0000\t\u000c\n\u1009\u0001\u000b\u1004\u0002\u000c\u000c\r\u1009\u0003"

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
