.class final Lcom/google/android/gms/internal/ads/zzbsg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcer;


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/zzbsf;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbsk;Lcom/google/android/gms/internal/ads/zzbsf;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbsg;->zza:Lcom/google/android/gms/internal/ads/zzbsf;

    invoke-static {p1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbrg;

    .line 2
    const-string v0, "Getting a new session for JS Engine."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zze;->zza(Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzbrg;->zzl()Lcom/google/android/gms/internal/ads/zzbsn;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsg;->zza:Lcom/google/android/gms/internal/ads/zzbsf;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzceu;->zzf(Ljava/lang/Object;)V

    return-void
.end method
