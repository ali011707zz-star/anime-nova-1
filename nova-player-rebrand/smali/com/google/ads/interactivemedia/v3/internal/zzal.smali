.class public final Lcom/google/ads/interactivemedia/v3/internal/zzal;
.super Lcom/google/ads/interactivemedia/v3/internal/zzacs;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzady;


# static fields
.field private static final zzg:Lcom/google/ads/interactivemedia/v3/internal/zzal;


# instance fields
.field private zzb:I

.field private zzd:J

.field private zze:I

.field private zzf:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzal;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzal;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzal;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzal;

    const-class v1, Lcom/google/ads/interactivemedia/v3/internal/zzal;

    invoke-static {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzaD(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzacs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzal;->zzd:J

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzal;->zze:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzal;->zzf:I

    return-void
.end method

.method static synthetic zza()Lcom/google/ads/interactivemedia/v3/internal/zzal;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzal;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzal;

    return-object v0
.end method


# virtual methods
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
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/zzal;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzal;

    return-object p1

    .line 4
    :cond_0
    throw p2

    .line 2
    :cond_1
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzak;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzak;-><init>([B)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzal;

    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzal;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x6

    .line 1
    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v3, "zzb"

    const/4 v4, 0x0

    aput-object v3, p1, v4

    const-string/jumbo v3, "zzd"

    aput-object v3, p1, p2

    const-string/jumbo p2, "zze"

    aput-object p2, p1, v2

    sget-object p2, Lcom/google/ads/interactivemedia/v3/internal/zzbi;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzacw;

    aput-object p2, p1, v1

    const-string/jumbo v1, "zzf"

    aput-object v1, p1, v0

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/ads/interactivemedia/v3/internal/zzal;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzal;

    const-string p3, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u180c\u0001\u0003\u180c\u0002"

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
