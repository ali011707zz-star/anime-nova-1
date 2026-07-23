.class final synthetic Lcom/google/android/gms/ads/query/zza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-api@@24.9.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zza:Landroid/content/Context;

.field private final synthetic zzb:Lcom/google/android/gms/ads/AdFormat;

.field private final synthetic zzc:Lcom/google/android/gms/ads/AdRequest;

.field private final synthetic zzd:Ljava/lang/String;

.field private final synthetic zze:Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;


# direct methods
.method synthetic constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdFormat;Lcom/google/android/gms/ads/AdRequest;Ljava/lang/String;Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/query/zza;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/ads/query/zza;->zzb:Lcom/google/android/gms/ads/AdFormat;

    iput-object p3, p0, Lcom/google/android/gms/ads/query/zza;->zzc:Lcom/google/android/gms/ads/AdRequest;

    iput-object p4, p0, Lcom/google/android/gms/ads/query/zza;->zzd:Ljava/lang/String;

    iput-object p5, p0, Lcom/google/android/gms/ads/query/zza;->zze:Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;

    return-void
.end method


# virtual methods
.method public final synthetic run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/query/zza;->zzc:Lcom/google/android/gms/ads/AdRequest;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbyj;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdRequest;->zza()Lcom/google/android/gms/ads/internal/client/zzek;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/ads/query/zza;->zze:Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;

    iget-object v3, p0, Lcom/google/android/gms/ads/query/zza;->zzd:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/ads/query/zza;->zzb:Lcom/google/android/gms/ads/AdFormat;

    iget-object v5, p0, Lcom/google/android/gms/ads/query/zza;->zza:Landroid/content/Context;

    invoke-direct {v1, v5, v4, v0, v3}, Lcom/google/android/gms/internal/ads/zzbyj;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdFormat;Lcom/google/android/gms/ads/internal/client/zzek;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbyj;->zzb(Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V

    return-void
.end method
