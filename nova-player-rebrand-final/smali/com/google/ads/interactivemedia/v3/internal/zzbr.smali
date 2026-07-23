.class public final Lcom/google/ads/interactivemedia/v3/internal/zzbr;
.super Lcom/google/ads/interactivemedia/v3/internal/zzacs;
.source "com.google.ads.interactivemedia.v3:interactivemedia@@3.38.0"

# interfaces
.implements Lcom/google/ads/interactivemedia/v3/internal/zzady;


# static fields
.field private static final zzh:Lcom/google/ads/interactivemedia/v3/internal/zzbr;


# instance fields
.field private zzb:I

.field private zzd:Lcom/google/ads/interactivemedia/v3/internal/zzada;

.field private zze:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

.field private zzf:I

.field private zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/ads/interactivemedia/v3/internal/zzbr;

    invoke-direct {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzbr;-><init>()V

    sput-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzbr;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zzbr;

    const-class v1, Lcom/google/ads/interactivemedia/v3/internal/zzbr;

    .line 2
    invoke-static {v1, v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzaD(Ljava/lang/Class;Lcom/google/ads/interactivemedia/v3/internal/zzacs;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzaH()Lcom/google/ads/interactivemedia/v3/internal/zzada;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbr;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzada;

    .line 3
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzabt;->zzb:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbr;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbr;->zzf:I

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbr;->zzg:I

    return-void
.end method

.method public static zza()Lcom/google/ads/interactivemedia/v3/internal/zzbq;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzbr;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zzbr;

    invoke-virtual {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzax()Lcom/google/ads/interactivemedia/v3/internal/zzaco;

    move-result-object v0

    check-cast v0, Lcom/google/ads/interactivemedia/v3/internal/zzbq;

    return-object v0
.end method

.method static synthetic zzd()Lcom/google/ads/interactivemedia/v3/internal/zzbr;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/ads/interactivemedia/v3/internal/zzbr;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zzbr;

    return-object v0
.end method


# virtual methods
.method final synthetic zzb(Lcom/google/ads/interactivemedia/v3/internal/zzabt;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbr;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzada;

    invoke-interface {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzada;->zza()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2
    invoke-static {v0}, Lcom/google/ads/interactivemedia/v3/internal/zzacs;->zzaI(Lcom/google/ads/interactivemedia/v3/internal/zzada;)Lcom/google/ads/interactivemedia/v3/internal/zzada;

    move-result-object v0

    iput-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbr;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzada;

    :cond_0
    iget-object v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbr;->zzd:Lcom/google/ads/interactivemedia/v3/internal/zzada;

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method final synthetic zzc(Lcom/google/ads/interactivemedia/v3/internal/zzabt;)V
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbr;->zzb:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbr;->zzb:I

    iput-object p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbr;->zze:Lcom/google/ads/interactivemedia/v3/internal/zzabt;

    return-void
.end method

.method final synthetic zze(I)V
    .locals 0

    .line 0
    const/4 p1, 0x4

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbr;->zzf:I

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbr;->zzb:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbr;->zzb:I

    return-void
.end method

.method final synthetic zzf(I)V
    .locals 0

    .line 0
    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbr;->zzg:I

    iget p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbr;->zzb:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/google/ads/interactivemedia/v3/internal/zzbr;->zzb:I

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
    sget-object p1, Lcom/google/ads/interactivemedia/v3/internal/zzbr;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zzbr;

    return-object p1

    .line 5
    :cond_0
    throw p2

    .line 2
    :cond_1
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzbq;

    .line 3
    invoke-direct {p1, p2}, Lcom/google/ads/interactivemedia/v3/internal/zzbq;-><init>([B)V

    return-object p1

    :cond_2
    new-instance p1, Lcom/google/ads/interactivemedia/v3/internal/zzbr;

    .line 4
    invoke-direct {p1}, Lcom/google/ads/interactivemedia/v3/internal/zzbr;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x7

    .line 1
    new-array p1, p1, [Ljava/lang/Object;

    const-string/jumbo v3, "zzb"

    const/4 v4, 0x0

    aput-object v3, p1, v4

    const-string/jumbo v3, "zzd"

    aput-object v3, p1, p2

    const-string/jumbo p2, "zze"

    aput-object p2, p1, v2

    const-string/jumbo p2, "zzf"

    aput-object p2, p1, v1

    sget-object p2, Lcom/google/ads/interactivemedia/v3/internal/zzbl;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzacw;

    aput-object p2, p1, v0

    const-string/jumbo p2, "zzg"

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/ads/interactivemedia/v3/internal/zzbh;->zza:Lcom/google/ads/interactivemedia/v3/internal/zzacw;

    const/4 p3, 0x6

    aput-object p2, p1, p3

    sget-object p2, Lcom/google/ads/interactivemedia/v3/internal/zzbr;->zzh:Lcom/google/ads/interactivemedia/v3/internal/zzbr;

    const-string p3, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001\u001c\u0002\u100a\u0000\u0003\u180c\u0001\u0004\u180c\u0002"

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
