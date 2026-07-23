.class final synthetic Lcom/google/android/gms/internal/ads/zzdre;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@24.9.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgqt;


# instance fields
.field private final synthetic zza:Ljava/lang/String;

.field private final synthetic zzb:D

.field private final synthetic zzc:I

.field private final synthetic zzd:I


# direct methods
.method synthetic constructor <init>(Ljava/lang/String;DII)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdre;->zza:Ljava/lang/String;

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzdre;->zzb:D

    iput p4, p0, Lcom/google/android/gms/internal/ads/zzdre;->zzc:I

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzdre;->zzd:I

    return-void
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Landroid/graphics/Bitmap;

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbkd;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzdre;->zza:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzdre;->zzb:D

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzdre;->zzc:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzdre;->zzd:I

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzbkd;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;DIILjava/util/Map;)V

    return-object v0
.end method
