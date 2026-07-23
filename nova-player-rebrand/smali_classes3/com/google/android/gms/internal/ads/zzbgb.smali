.class public final Lcom/google/android/gms/internal/ads/zzbgb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private final zza:Ljava/io/InputStream;

.field private final zzb:Z

.field private final zzc:Z

.field private final zzd:J

.field private final zze:Z


# direct methods
.method private constructor <init>(Ljava/io/InputStream;ZZJZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgb;->zza:Ljava/io/InputStream;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzbgb;->zzb:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzbgb;->zzc:Z

    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/zzbgb;->zzd:J

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzbgb;->zze:Z

    return-void
.end method

.method public static zza(Ljava/io/InputStream;ZZJZ)Lcom/google/android/gms/internal/ads/zzbgb;
    .locals 7

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbgb;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzbgb;-><init>(Ljava/io/InputStream;ZZJZ)V

    return-object v0
.end method


# virtual methods
.method public final zzb()Ljava/io/InputStream;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgb;->zza:Ljava/io/InputStream;

    return-object v0
.end method

.method public final zzc()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgb;->zzb:Z

    return v0
.end method

.method public final zzd()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgb;->zzc:Z

    return v0
.end method

.method public final zze()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzbgb;->zzd:J

    return-wide v0
.end method

.method public final zzf()Z
    .locals 1

    .line 0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbgb;->zze:Z

    return v0
.end method
