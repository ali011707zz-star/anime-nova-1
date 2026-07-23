.class final synthetic Lcom/google/android/gms/ads/internal/util/zzm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private final synthetic zza:Lcom/google/android/gms/ads/internal/util/zzs;

.field private final synthetic zzb:Landroid/content/Context;

.field private final synthetic zzc:Ljava/lang/String;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/ads/internal/util/zzs;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/util/zzm;->zza:Lcom/google/android/gms/ads/internal/util/zzs;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/util/zzm;->zzb:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/ads/internal/util/zzm;->zzc:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final synthetic onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/zzm;->zza:Lcom/google/android/gms/ads/internal/util/zzs;

    iget-object v1, p0, Lcom/google/android/gms/ads/internal/util/zzm;->zzb:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/ads/internal/util/zzm;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/google/android/gms/ads/internal/util/zzs;->zzn(Landroid/content/Context;Ljava/lang/String;Landroid/content/SharedPreferences;Ljava/lang/String;)V

    return-void
.end method
