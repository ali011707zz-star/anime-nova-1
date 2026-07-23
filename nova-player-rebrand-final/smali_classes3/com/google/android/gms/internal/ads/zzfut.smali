.class public abstract Lcom/google/android/gms/internal/ads/zzfut;
.super Landroid/os/AsyncTask;
.source "com.google.android.gms:play-services-ads@@24.9.0"


# instance fields
.field private zza:Lcom/google/android/gms/internal/ads/zzfuu;

.field protected final zzd:Lcom/google/android/gms/internal/ads/zzful;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzful;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfut;->zzd:Lcom/google/android/gms/internal/ads/zzful;

    return-void
.end method


# virtual methods
.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzfut;->zza(Ljava/lang/String;)V

    return-void
.end method

.method protected zza(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzfut;->zza:Lcom/google/android/gms/internal/ads/zzfuu;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzfuu;->zzb(Lcom/google/android/gms/internal/ads/zzfut;)V

    :cond_0
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfuu;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfut;->zza:Lcom/google/android/gms/internal/ads/zzfuu;

    return-void
.end method
