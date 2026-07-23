.class public final Lcom/google/android/gms/internal/ads/zzagf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaex;


# instance fields
.field private final zzb:J

.field private final zzc:Lcom/google/android/gms/internal/ads/zzaex;


# direct methods
.method public constructor <init>(JLcom/google/android/gms/internal/ads/zzaex;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzagf;->zzb:J

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzagf;->zzc:Lcom/google/android/gms/internal/ads/zzaex;

    return-void
.end method


# virtual methods
.method final synthetic zza()J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzagf;->zzb:J

    return-wide v0
.end method

.method public final zzu(II)Lcom/google/android/gms/internal/ads/zzagh;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagf;->zzc:Lcom/google/android/gms/internal/ads/zzaex;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaex;->zzu(II)Lcom/google/android/gms/internal/ads/zzagh;

    move-result-object p1

    return-object p1
.end method

.method public final zzv()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzagf;->zzc:Lcom/google/android/gms/internal/ads/zzaex;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaex;->zzv()V

    return-void
.end method

.method public final zzw(Lcom/google/android/gms/internal/ads/zzafy;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzage;

    invoke-direct {v0, p0, p1, p1}, Lcom/google/android/gms/internal/ads/zzage;-><init>(Lcom/google/android/gms/internal/ads/zzagf;Lcom/google/android/gms/internal/ads/zzafy;Lcom/google/android/gms/internal/ads/zzafy;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzagf;->zzc:Lcom/google/android/gms/internal/ads/zzaex;

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzaex;->zzw(Lcom/google/android/gms/internal/ads/zzafy;)V

    return-void
.end method
