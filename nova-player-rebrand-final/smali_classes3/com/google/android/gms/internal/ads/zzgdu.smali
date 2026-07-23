.class public final Lcom/google/android/gms/internal/ads/zzgdu;
.super Lcom/google/android/gms/internal/ads/zzibr;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzidd;


# static fields
.field private static final zze:Lcom/google/android/gms/internal/ads/zzgdu;

.field private static volatile zzf:Lcom/google/android/gms/internal/ads/zzidk;


# instance fields
.field private zza:I

.field private zzb:I

.field private zzc:Ljava/lang/Object;

.field private zzd:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgdu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgdu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgdu;->zze:Lcom/google/android/gms/internal/ads/zzgdu;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgdu;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbu(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzibr;)V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzibr;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzgdu;->zzb:I

    return-void
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzian;)Lcom/google/android/gms/internal/ads/zzgdu;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgdu;->zze:Lcom/google/android/gms/internal/ads/zzgdu;

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbS(Lcom/google/android/gms/internal/ads/zzibr;Lcom/google/android/gms/internal/ads/zzian;)Lcom/google/android/gms/internal/ads/zzibr;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgdu;

    return-object p0
.end method

.method public static zze()Lcom/google/android/gms/internal/ads/zzgdt;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgdu;->zze:Lcom/google/android/gms/internal/ads/zzgdu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzibr;->zzbn()Lcom/google/android/gms/internal/ads/zzibl;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgdt;

    return-object v0
.end method

.method public static zzg()Lcom/google/android/gms/internal/ads/zzgdu;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgdu;->zze:Lcom/google/android/gms/internal/ads/zzgdu;

    return-object v0
.end method

.method static synthetic zzk()Lcom/google/android/gms/internal/ads/zzgdu;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgdu;->zze:Lcom/google/android/gms/internal/ads/zzgdu;

    return-object v0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzbcp;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgdu;->zzb:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdu;->zzc:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbcp;

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbcp;->zzj()Lcom/google/android/gms/internal/ads/zzbcp;

    move-result-object v0

    return-object v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzbcn;
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgdu;->zzb:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgdu;->zzc:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbcn;

    return-object v0

    .line 2
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbcn;->zzd()Lcom/google/android/gms/internal/ads/zzbcn;

    move-result-object v0

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzbch;
    .locals 1

    .line 0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzgdu;->zzd:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbch;->zzb(I)Lcom/google/android/gms/internal/ads/zzbch;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbch;->zza:Lcom/google/android/gms/internal/ads/zzbch;

    :cond_0
    return-object v0
.end method

.method protected final zzdc(Lcom/google/android/gms/internal/ads/zzibq;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_7

    const/4 p3, 0x6

    const/4 v0, 0x5

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_5

    const/4 p2, 0x0

    if-eq p1, v1, :cond_4

    if-eq p1, v0, :cond_3

    if-ne p1, p3, :cond_2

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgdu;->zzf:Lcom/google/android/gms/internal/ads/zzidk;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzgdu;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgdu;->zzf:Lcom/google/android/gms/internal/ads/zzidk;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzibm;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzgdu;->zze:Lcom/google/android/gms/internal/ads/zzgdu;

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzibm;-><init>(Lcom/google/android/gms/internal/ads/zzibr;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzgdu;->zzf:Lcom/google/android/gms/internal/ads/zzidk;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 4
    :cond_0
    :goto_0
    monitor-exit p2

    return-object p1

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-object p1

    .line 7
    :cond_2
    throw p2

    .line 2
    :cond_3
    sget-object p1, Lcom/google/android/gms/internal/ads/zzgdu;->zze:Lcom/google/android/gms/internal/ads/zzgdu;

    return-object p1

    .line 5
    :cond_4
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgdt;

    .line 6
    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzgdt;-><init>([B)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/google/android/gms/internal/ads/zzgdu;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzgdu;-><init>()V

    return-object p1

    .line 2
    :cond_6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbch;->zzc()Lcom/google/android/gms/internal/ads/zzibx;

    move-result-object p1

    const/4 v4, 0x7

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "zzc"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "zzb"

    aput-object v5, v4, p2

    const-string p2, "zza"

    aput-object p2, v4, v3

    const-class p2, Lcom/google/android/gms/internal/ads/zzbcp;

    aput-object p2, v4, v2

    const-class p2, Lcom/google/android/gms/internal/ads/zzbcn;

    aput-object p2, v4, v1

    const-string p2, "zzd"

    aput-object p2, v4, v0

    aput-object p1, v4, p3

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgdu;->zze:Lcom/google/android/gms/internal/ads/zzgdu;

    const-string p2, "\u0004\u0003\u0001\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003\u180c\u0000"

    .line 5
    invoke-static {p1, p2, v4}, Lcom/google/android/gms/internal/ads/zzibr;->zzbv(Lcom/google/android/gms/internal/ads/zzidc;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 2
    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method final synthetic zzh(Lcom/google/android/gms/internal/ads/zzbcp;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgdu;->zzc:Ljava/lang/Object;

    const/4 p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgdu;->zzb:I

    return-void
.end method

.method final synthetic zzi(Lcom/google/android/gms/internal/ads/zzbcn;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgdu;->zzc:Ljava/lang/Object;

    const/4 p1, 0x2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgdu;->zzb:I

    return-void
.end method

.method final synthetic zzj(Lcom/google/android/gms/internal/ads/zzbch;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbch;->zza()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgdu;->zzd:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzgdu;->zza:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgdu;->zza:I

    return-void
.end method
