.class final Lcom/google/android/gms/internal/ads/zzgbu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgfb;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgbl;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzgbr;

.field private zzc:Landroid/content/Context;

.field private zzd:Landroid/view/View;

.field private zze:Landroid/app/Activity;

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/util/Map;

.field private zzh:Lcom/google/android/gms/internal/ads/zzawg;

.field private zzi:Lcom/google/android/gms/internal/ads/zzgcc;


# direct methods
.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgbl;Lcom/google/android/gms/internal/ads/zzgbr;[B)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbu;->zza:Lcom/google/android/gms/internal/ads/zzgbl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgbu;->zzb:Lcom/google/android/gms/internal/ads/zzgbr;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzgfc;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgbu;->zzc:Landroid/content/Context;

    const-class v1, Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zziko;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgbu;->zzg:Ljava/util/Map;

    const-class v1, Ljava/util/Map;

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zziko;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgbu;->zzh:Lcom/google/android/gms/internal/ads/zzawg;

    const-class v1, Lcom/google/android/gms/internal/ads/zzawg;

    .line 3
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zziko;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgbu;->zzi:Lcom/google/android/gms/internal/ads/zzgcc;

    const-class v1, Lcom/google/android/gms/internal/ads/zzgcc;

    .line 4
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zziko;->zzc(Ljava/lang/Object;Ljava/lang/Class;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzgbv;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgbu;->zza:Lcom/google/android/gms/internal/ads/zzgbl;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzgbu;->zzb:Lcom/google/android/gms/internal/ads/zzgbr;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzgbu;->zzc:Landroid/content/Context;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzgbu;->zzd:Landroid/view/View;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzgbu;->zze:Landroid/app/Activity;

    iget-object v8, p0, Lcom/google/android/gms/internal/ads/zzgbu;->zzf:Ljava/lang/String;

    iget-object v9, p0, Lcom/google/android/gms/internal/ads/zzgbu;->zzg:Ljava/util/Map;

    iget-object v10, p0, Lcom/google/android/gms/internal/ads/zzgbu;->zzh:Lcom/google/android/gms/internal/ads/zzawg;

    iget-object v11, p0, Lcom/google/android/gms/internal/ads/zzgbu;->zzi:Lcom/google/android/gms/internal/ads/zzgcc;

    .line 5
    invoke-direct/range {v2 .. v11}, Lcom/google/android/gms/internal/ads/zzgbv;-><init>(Lcom/google/android/gms/internal/ads/zzgbl;Lcom/google/android/gms/internal/ads/zzgbr;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzawg;Lcom/google/android/gms/internal/ads/zzgcc;)V

    return-object v2
.end method

.method public final bridge synthetic zzb(Lcom/google/android/gms/internal/ads/zzgcc;)Lcom/google/android/gms/internal/ads/zzgfb;
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbu;->zzi:Lcom/google/android/gms/internal/ads/zzgcc;

    return-object p0
.end method

.method public final bridge synthetic zzc(Lcom/google/android/gms/internal/ads/zzawg;)Lcom/google/android/gms/internal/ads/zzgfb;
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbu;->zzh:Lcom/google/android/gms/internal/ads/zzawg;

    return-object p0
.end method

.method public final bridge synthetic zzd(Ljava/util/Map;)Lcom/google/android/gms/internal/ads/zzgfb;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbu;->zzg:Ljava/util/Map;

    return-object p0
.end method

.method public final synthetic zze(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgfb;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbu;->zzf:Ljava/lang/String;

    return-object p0
.end method

.method public final synthetic zzf(Landroid/app/Activity;)Lcom/google/android/gms/internal/ads/zzgfb;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbu;->zze:Landroid/app/Activity;

    return-object p0
.end method

.method public final synthetic zzg(Landroid/view/View;)Lcom/google/android/gms/internal/ads/zzgfb;
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbu;->zzd:Landroid/view/View;

    return-object p0
.end method

.method public final bridge synthetic zzh(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzgfb;
    .locals 0

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgbu;->zzc:Landroid/content/Context;

    return-object p0
.end method
