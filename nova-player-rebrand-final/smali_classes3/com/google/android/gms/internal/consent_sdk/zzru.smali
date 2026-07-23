.class final Lcom/google/android/gms/internal/consent_sdk/zzru;
.super Ljava/lang/Object;
.source "com.google.android.ump:user-messaging-platform@@4.0.0"

# interfaces
.implements Lcom/google/android/gms/internal/consent_sdk/zzsa;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/consent_sdk/zzrq;

.field private final zzb:Lcom/google/android/gms/internal/consent_sdk/zzsp;

.field private final zzc:Z

.field private final zzd:Lcom/google/android/gms/internal/consent_sdk/zzqb;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/consent_sdk/zzsp;Lcom/google/android/gms/internal/consent_sdk/zzqb;Lcom/google/android/gms/internal/consent_sdk/zzrq;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzru;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzsp;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/consent_sdk/zzru;->zzc:Z

    iput-object p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzru;->zzd:Lcom/google/android/gms/internal/consent_sdk/zzqb;

    iput-object p3, p0, Lcom/google/android/gms/internal/consent_sdk/zzru;->zza:Lcom/google/android/gms/internal/consent_sdk/zzrq;

    return-void
.end method

.method static zzi(Lcom/google/android/gms/internal/consent_sdk/zzsp;Lcom/google/android/gms/internal/consent_sdk/zzqb;Lcom/google/android/gms/internal/consent_sdk/zzrq;)Lcom/google/android/gms/internal/consent_sdk/zzru;
    .locals 1

    .line 0
    new-instance v0, Lcom/google/android/gms/internal/consent_sdk/zzru;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzru;-><init>(Lcom/google/android/gms/internal/consent_sdk/zzsp;Lcom/google/android/gms/internal/consent_sdk/zzqb;Lcom/google/android/gms/internal/consent_sdk/zzrq;)V

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;)I
    .locals 2

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzqm;

    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzsq;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzsq;->zzb()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzru;->zzc:Z

    if-nez v1, :cond_0

    return v0

    .line 4
    :cond_0
    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzb(Ljava/lang/Object;)I
    .locals 2

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzqm;

    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzsq;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/consent_sdk/zzru;->zzc:Z

    if-nez v1, :cond_0

    return v0

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzc()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzru;->zza:Lcom/google/android/gms/internal/consent_sdk/zzrq;

    instance-of v1, v0, Lcom/google/android/gms/internal/consent_sdk/zzqm;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzqm;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzr()Lcom/google/android/gms/internal/consent_sdk/zzqm;

    move-result-object v0

    return-object v0

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zzrq;->zzu()Lcom/google/android/gms/internal/consent_sdk/zzrp;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/consent_sdk/zzrp;->zzk()Lcom/google/android/gms/internal/consent_sdk/zzrq;

    move-result-object v0

    return-object v0
.end method

.method public final zzd(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzru;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzsp;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzsp;->zza(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzru;->zzd:Lcom/google/android/gms/internal/consent_sdk/zzqb;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/consent_sdk/zzqb;->zza(Ljava/lang/Object;)V

    return-void
.end method

.method public final zze(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzru;->zzb:Lcom/google/android/gms/internal/consent_sdk/zzsp;

    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzsc;->zzp(Lcom/google/android/gms/internal/consent_sdk/zzsp;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzru;->zzc:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/consent_sdk/zzru;->zzd:Lcom/google/android/gms/internal/consent_sdk/zzqb;

    .line 2
    invoke-static {v0, p1, p2}, Lcom/google/android/gms/internal/consent_sdk/zzsc;->zzo(Lcom/google/android/gms/internal/consent_sdk/zzqb;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final zzf(Ljava/lang/Object;Lcom/google/android/gms/internal/consent_sdk/zztb;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzg(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/google/android/gms/internal/consent_sdk/zzqm;

    iget-object v0, v0, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzsq;

    .line 2
    check-cast p2, Lcom/google/android/gms/internal/consent_sdk/zzqm;

    iget-object p2, p2, Lcom/google/android/gms/internal/consent_sdk/zzqm;->zzc:Lcom/google/android/gms/internal/consent_sdk/zzsq;

    .line 3
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-boolean p2, p0, Lcom/google/android/gms/internal/consent_sdk/zzru;->zzc:Z

    if-nez p2, :cond_1

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_1
    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public final zzh(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 p1, 0x0

    throw p1
.end method
