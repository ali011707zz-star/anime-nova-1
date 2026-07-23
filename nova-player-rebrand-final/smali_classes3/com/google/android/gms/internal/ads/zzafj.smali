.class public abstract Lcom/google/android/gms/internal/ads/zzafj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzafy;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzafy;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzafy;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzafj;->zza:Lcom/google/android/gms/internal/ads/zzafy;

    return-void
.end method


# virtual methods
.method public zza()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafj;->zza:Lcom/google/android/gms/internal/ads/zzafy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzafy;->zza()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzb()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafj;->zza:Lcom/google/android/gms/internal/ads/zzafy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzafy;->zzb()Z

    move-result v0

    return v0
.end method

.method public zzc(J)Lcom/google/android/gms/internal/ads/zzafw;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzafj;->zza:Lcom/google/android/gms/internal/ads/zzafy;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzafy;->zzc(J)Lcom/google/android/gms/internal/ads/zzafw;

    move-result-object p1

    return-object p1
.end method
