.class public interface abstract Lcoil/memory/StrongMemoryCache;
.super Ljava/lang/Object;
.source "StrongMemoryCache.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil/memory/StrongMemoryCache$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcoil/memory/StrongMemoryCache$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    sget-object v0, Lcoil/memory/StrongMemoryCache$Companion;->$$INSTANCE:Lcoil/memory/StrongMemoryCache$Companion;

    sput-object v0, Lcoil/memory/StrongMemoryCache;->Companion:Lcoil/memory/StrongMemoryCache$Companion;

    return-void
.end method


# virtual methods
.method public abstract clearMemory()V
.end method

.method public abstract get(Lcoil/memory/MemoryCache$Key;)Lcoil/memory/RealMemoryCache$Value;
.end method

.method public abstract set(Lcoil/memory/MemoryCache$Key;Landroid/graphics/Bitmap;Z)V
.end method

.method public abstract trimMemory(I)V
.end method
