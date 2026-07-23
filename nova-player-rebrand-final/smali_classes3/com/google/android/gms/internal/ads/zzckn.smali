.class final synthetic Lcom/google/android/gms/internal/ads/zzckn;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/internal/ads/zzcko;

.field private final synthetic zzb:Ljava/lang/String;

.field private final synthetic zzc:Landroid/webkit/ValueCallback;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzcko;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzckn;->zza:Lcom/google/android/gms/internal/ads/zzcko;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzckn;->zzb:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzckn;->zzc:Landroid/webkit/ValueCallback;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzckn;->zza:Lcom/google/android/gms/internal/ads/zzcko;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzckn;->zzb:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzckn;->zzc:Landroid/webkit/ValueCallback;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcko;->zzaU(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method
