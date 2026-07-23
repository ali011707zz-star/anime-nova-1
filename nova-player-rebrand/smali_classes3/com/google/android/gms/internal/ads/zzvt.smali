.class final Lcom/google/android/gms/internal/ads/zzvt;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzye;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzye;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzguf;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzye;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvt;->zza:Lcom/google/android/gms/internal/ads/zzye;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzguf;->zzq(Ljava/util/Collection;)Lcom/google/android/gms/internal/ads/zzguf;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzb:Lcom/google/android/gms/internal/ads/zzguf;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzguf;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->zzb:Lcom/google/android/gms/internal/ads/zzguf;

    return-object v0
.end method

.method public final zzg(J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->zza:Lcom/google/android/gms/internal/ads/zzye;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzye;->zzg(J)V

    return-void
.end method

.method public final zzi()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->zza:Lcom/google/android/gms/internal/ads/zzye;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzye;->zzi()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzl()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->zza:Lcom/google/android/gms/internal/ads/zzye;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzye;->zzl()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzll;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->zza:Lcom/google/android/gms/internal/ads/zzye;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzye;->zzm(Lcom/google/android/gms/internal/ads/zzll;)Z

    move-result p1

    return p1
.end method

.method public final zzn()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzvt;->zza:Lcom/google/android/gms/internal/ads/zzye;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzye;->zzn()Z

    move-result v0

    return v0
.end method
