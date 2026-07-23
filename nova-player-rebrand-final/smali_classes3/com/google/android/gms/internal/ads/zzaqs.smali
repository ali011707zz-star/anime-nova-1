.class final Lcom/google/android/gms/internal/ads/zzaqs;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzaqt;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzaqu;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzaqt;Lcom/google/android/gms/internal/ads/zzaqu;[B)V
    .locals 0

    .line 1
    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqs;->zza:Lcom/google/android/gms/internal/ads/zzaqt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzaqs;->zzb:Lcom/google/android/gms/internal/ads/zzaqu;

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 1
    const-string p1, "InstallReferrerClient"

    const-string v0, "Install Referrer service connected."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zza(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqs;->zza:Lcom/google/android/gms/internal/ads/zzaqt;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzbcw;->zzb(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzbcx;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzaqt;->zzf(Lcom/google/android/gms/internal/ads/zzbcx;)V

    const/4 p2, 0x2

    .line 3
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzaqt;->zze(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqs;->zzb:Lcom/google/android/gms/internal/ads/zzaqu;

    const/4 p2, 0x0

    .line 4
    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzaqu;->zza(I)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    const-string p1, "InstallReferrerClient"

    const-string v0, "Install Referrer service disconnected."

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzaqw;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzaqs;->zza:Lcom/google/android/gms/internal/ads/zzaqt;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzaqt;->zzf(Lcom/google/android/gms/internal/ads/zzbcx;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzaqt;->zze(I)V

    return-void
.end method
