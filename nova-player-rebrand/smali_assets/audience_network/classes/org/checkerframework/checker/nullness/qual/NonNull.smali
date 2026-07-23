.class public interface abstract annotation Lorg/checkerframework/checker/nullness/qual/NonNull;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Documented;
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE_USE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->TYPE_PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation

.annotation runtime Lorg/checkerframework/framework/qual/DefaultFor;
    value = {
        .enum Lcom/facebook/ads/redexgen/X/0E;->A04:Lcom/facebook/ads/redexgen/X/0E;
    }
.end annotation

.annotation runtime Lorg/checkerframework/framework/qual/DefaultQualifierInHierarchy;
.end annotation

.annotation runtime Lorg/checkerframework/framework/qual/QualifierForLiterals;
    value = {
        .enum Lcom/facebook/ads/redexgen/X/0L;->A0C:Lcom/facebook/ads/redexgen/X/0L;
    }
.end annotation

.annotation runtime Lorg/checkerframework/framework/qual/SubtypeOf;
    value = {
        Lorg/checkerframework/checker/nullness/qual/MonotonicNonNull;
    }
.end annotation

.annotation runtime Lorg/checkerframework/framework/qual/UpperBoundFor;
    typeKinds = {
        .enum Lcom/facebook/ads/redexgen/X/0F;->A0I:Lcom/facebook/ads/redexgen/X/0F;,
        .enum Lcom/facebook/ads/redexgen/X/0F;->A0C:Lcom/facebook/ads/redexgen/X/0F;,
        .enum Lcom/facebook/ads/redexgen/X/0F;->A04:Lcom/facebook/ads/redexgen/X/0F;,
        .enum Lcom/facebook/ads/redexgen/X/0F;->A06:Lcom/facebook/ads/redexgen/X/0F;,
        .enum Lcom/facebook/ads/redexgen/X/0F;->A08:Lcom/facebook/ads/redexgen/X/0F;,
        .enum Lcom/facebook/ads/redexgen/X/0F;->A0B:Lcom/facebook/ads/redexgen/X/0F;,
        .enum Lcom/facebook/ads/redexgen/X/0F;->A0E:Lcom/facebook/ads/redexgen/X/0F;,
        .enum Lcom/facebook/ads/redexgen/X/0F;->A0J:Lcom/facebook/ads/redexgen/X/0F;,
        .enum Lcom/facebook/ads/redexgen/X/0F;->A05:Lcom/facebook/ads/redexgen/X/0F;
    }
.end annotation
