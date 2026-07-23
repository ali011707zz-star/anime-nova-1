.class public abstract Lcom/google/android/gms/internal/ads/zzgts;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzgts;

.field private static final zzb:Lcom/google/android/gms/internal/ads/zzgts;

.field private static final zzc:Lcom/google/android/gms/internal/ads/zzgts;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgtq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgtq;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgts;->zza:Lcom/google/android/gms/internal/ads/zzgts;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzgtr;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgtr;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgts;->zzb:Lcom/google/android/gms/internal/ads/zzgts;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgtr;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzgtr;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgts;->zzc:Lcom/google/android/gms/internal/ads/zzgts;

    return-void
.end method

.method synthetic constructor <init>([B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzg()Lcom/google/android/gms/internal/ads/zzgts;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgts;->zza:Lcom/google/android/gms/internal/ads/zzgts;

    return-object v0
.end method

.method static synthetic zzh()Lcom/google/android/gms/internal/ads/zzgts;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgts;->zza:Lcom/google/android/gms/internal/ads/zzgts;

    return-object v0
.end method

.method static synthetic zzi()Lcom/google/android/gms/internal/ads/zzgts;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgts;->zzb:Lcom/google/android/gms/internal/ads/zzgts;

    return-object v0
.end method

.method static synthetic zzj()Lcom/google/android/gms/internal/ads/zzgts;
    .locals 1

    .line 0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzgts;->zzc:Lcom/google/android/gms/internal/ads/zzgts;

    return-object v0
.end method


# virtual methods
.method public abstract zza(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzgts;
.end method

.method public abstract zzb(II)Lcom/google/android/gms/internal/ads/zzgts;
.end method

.method public abstract zzc(ZZ)Lcom/google/android/gms/internal/ads/zzgts;
.end method

.method public abstract zzd(ZZ)Lcom/google/android/gms/internal/ads/zzgts;
.end method

.method public abstract zze()I
.end method
