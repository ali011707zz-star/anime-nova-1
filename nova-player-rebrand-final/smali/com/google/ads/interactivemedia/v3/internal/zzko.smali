.class public final Lcom/google/ads/interactivemedia/v3/internal/zzko;
.super Lcom/google/ads/interactivemedia/v3/internal/zzacs;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzady;


# static fields
.field private static final zzg:Lcom/google/ads/interactivemedia/v3/internal/zzko;


# instance fields
.field private zzb:I

.field private zzd:Lcom/google/ads/interactivemedia/v3/internal/zzkq;

.field private zze:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

.field private zzf:Lcom/google/ads/interactivemedia/v3/internal/zzabt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzko;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzko;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzko;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzko;

    const-class v1, Lcom/google/ads/interactivemedia/v3/internal/zzko;

    .line 2
    invoke-static {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzaD(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzacs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;-><init>()V

    .line 2
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzko;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzko;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    return-void
.end method

.method public static zzd(Lcom/google/ads/interactivemedia/v3/internal/zzabt;Lcom/google/ads/interactivemedia/v3/internal/zzace;)Lcom/google/ads/interactivemedia/v3/internal/zzko;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzko;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzko;

    invoke-static {v0, p0, p1}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzaK(Lcom/google/ads/interactivemedia/v3/internal/zzacs;Lcom/google/ads/interactivemedia/v3/internal/zzabt;Lcom/google/ads/interactivemedia/v3/internal/zzace;)Lcom/google/ads/interactivemedia/v3/internal/zzacs;

    move-result-object p0

    check-cast p0, Lcom/google/ads/interactivemedia/v3/internal/zzko;

    return-object p0
.end method

.method static synthetic zze()Lcom/google/ads/interactivemedia/v3/internal/zzko;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzko;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzko;

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/ads/interactivemedia/v3/internal/zzkq;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzko;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzkq;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzkq;->zzi()Lcom/google/ads/interactivemedia/v3/internal/zzkq;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final zzb()Lcom/google/ads/interactivemedia/v3/internal/zzabt;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzko;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    return-object v0
.end method

.method public final zzc()Lcom/google/ads/interactivemedia/v3/internal/zzabt;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzko;->zzf:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    return-object v0
.end method

.method protected final zzm(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    add-int/lit8 p1, p1, -0x1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    const/4 p3, 0x4

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 p2, 0x0

    if-eq p1, p3, :cond_1

    const/4 p3, 0x5

    if-ne p1, p3, :cond_0

    .line 1
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/zzko;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzko;

    return-object p1

    .line 5
    :cond_0
    throw p2

    .line 2
    :cond_1
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzkn;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzkn;-><init>([B)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzko;

    .line 4
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzko;-><init>()V

    return-object p1

    .line 1
    :cond_3
    new-array p1, p3, [Ljava/lang/Object;

    const-string/jumbo p3, "zzb"

    const/4 v2, 0x0

    aput-object p3, p1, v2

    const-string/jumbo p3, "zzd"

    aput-object p3, p1, p2

    const-string/jumbo p2, "zze"

    aput-object p2, p1, v1

    const-string/jumbo p2, "zzf"

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/ads/interactivemedia/v3/internal/zzko;->zzg:Lcom/google/ads/interactivemedia/v3/internal/zzko;

    const-string p3, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u100a\u0001\u0003\u100a\u0002"

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
