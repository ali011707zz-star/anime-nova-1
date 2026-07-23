.class public final Lcom/google/android/gms/internal/ads/zzcwa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzikg;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzcvx;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcvx;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcwa;->zza:Lcom/google/android/gms/internal/ads/zzcvx;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzcvx;)Lcom/google/android/gms/internal/ads/zzcwa;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcwa;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcwa;-><init>(Lcom/google/android/gms/internal/ads/zzcvx;)V

    return-object v0
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzcvx;)Lcom/google/android/gms/internal/ads/zzdeg;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcvx;->zza()Lcom/google/android/gms/internal/ads/zzdeg;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdeg;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwa;->zza:Lcom/google/android/gms/internal/ads/zzcvx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcwa;->zzd(Lcom/google/android/gms/internal/ads/zzcvx;)Lcom/google/android/gms/internal/ads/zzdeg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcwa;->zza:Lcom/google/android/gms/internal/ads/zzcvx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcwa;->zzd(Lcom/google/android/gms/internal/ads/zzcvx;)Lcom/google/android/gms/internal/ads/zzdeg;

    move-result-object v0

    return-object v0
.end method
