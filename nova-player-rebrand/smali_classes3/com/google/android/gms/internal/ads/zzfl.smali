.class final synthetic Lcom/google/android/gms/internal/ads/zzfl;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzfo;

.field private final synthetic zzb:Z

.field private final synthetic zzc:Z


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzfo;ZZ)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfl;->zza:Lcom/google/android/gms/internal/ads/zzfo;

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzb:Z

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzc:Z

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfl;->zza:Lcom/google/android/gms/internal/ads/zzfo;

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzb:Z

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzfl;->zzc:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzfo;->zzd(ZZ)V

    return-void
.end method
