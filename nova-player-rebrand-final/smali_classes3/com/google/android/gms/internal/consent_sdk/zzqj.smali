.class public abstract Lcom/google/android/gms/internal/consent_sdk/zzqj;
.super Lcom/google/android/gms/internal/consent_sdk/zzoz;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"


# instance fields
.field protected zza:Lcom/google/android/gms/internal/consent_sdk/zzqm;

.field private final zzb:Lcom/google/android/gms/internal/consent_sdk/zzqm;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzqm;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/consent_sdk/zzoz;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzqj;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzqm;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzD()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzr()Lcom/google/android/gms/internal/consent_sdk/zzqm;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzqj;->zza:Lcom/google/android/gms/internal/consent_sdk/zzqm;

    return-void

    .line 1
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Default instance must be immutable."

    .line 3
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzqj;->zzh()Lcom/google/android/gms/internal/consent_sdk/zzqj;

    move-result-object v0

    return-object v0
.end method

.method public final zzh()Lcom/google/android/gms/internal/consent_sdk/zzqj;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzqj;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzqm;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzb(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzqj;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzqj;->zzj()Lcom/google/android/gms/internal/consent_sdk/zzqm;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzqj;->zza:Lcom/google/android/gms/internal/consent_sdk/zzqm;

    return-object v0
.end method

.method public final zzi()Lcom/google/android/gms/internal/consent_sdk/zzqm;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzqj;->zzj()Lcom/google/android/gms/internal/consent_sdk/zzqm;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzo()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/consent_sdk/zzso;

    .line 3
    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/consent_sdk/zzso;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzrq;)V

    .line 4
    throw v1
.end method

.method public zzj()Lcom/google/android/gms/internal/consent_sdk/zzqm;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzqj;->zza:Lcom/google/android/gms/internal/consent_sdk/zzqm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzD()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzqj;->zza:Lcom/google/android/gms/internal/consent_sdk/zzqm;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzqj;->zza:Lcom/google/android/gms/internal/consent_sdk/zzqm;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzx()V

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzqj;->zza:Lcom/google/android/gms/internal/consent_sdk/zzqm;

    return-object v0
.end method

.method public bridge synthetic zzk()Lcom/google/android/gms/internal/consent_sdk/zzrq;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzqj;->zzj()Lcom/google/android/gms/internal/consent_sdk/zzqm;

    move-result-object v0

    return-object v0
.end method

.method protected final zzm()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzqj;->zza:Lcom/google/android/gms/internal/consent_sdk/zzqm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzD()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/consent_sdk/zzqj;->zzn()V

    :cond_0
    return-void
.end method

.method protected zzn()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzqj;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzqm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzr()Lcom/google/android/gms/internal/consent_sdk/zzqm;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzqj;->zza:Lcom/google/android/gms/internal/consent_sdk/zzqm;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/consent_sdk/zzrx;->zza()Lcom/google/android/gms/internal/consent_sdk/zzrx;

    move-result-object v2

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/consent_sdk/zzrx;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/consent_sdk/zzsa;

    move-result-object v2

    .line 2
    invoke-interface {v2, v0, v1}, Lcom/google/android/gms/internal/consent_sdk/zzsa;->zze(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzqj;->zza:Lcom/google/android/gms/internal/consent_sdk/zzqm;

    return-void
.end method
